// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// Custom Widget: PropertyPACIMapWidget
import 'package:webview_flutter/webview_flutter.dart';

class PropertyPACIMapWidget extends StatefulWidget {
  final Map<String, dynamic> property; // brokerage_properties record
  final Function(String)? onLocationSelected;
  final bool showControls;

  const PropertyPACIMapWidget({
    Key? key,
    required this.property,
    this.onLocationSelected,
    this.showControls = true,
  }) : super(key: key);

  @override
  State<PropertyPACIMapWidget> createState() => _PropertyPACIMapWidgetState();
}

class _PropertyPACIMapWidgetState extends State<PropertyPACIMapWidget> {
  late WebViewController _controller;
  Map<String, dynamic>? _paciData;

  @override
  void initState() {
    super.initState();
    _loadPACIData();
    _initializeMap();
  }

  Future<void> _loadPACIData() async {
    // Query paci_addresses table for additional data
    if (widget.property['paci_number'] != null) {
      final paciData = await FFAppState()
          .supabase
          .from('paci_addresses')
          .select()
          .eq('paci_number', widget.property['paci_number'])
          .single();

      setState(() {
        _paciData = paciData;
      });
    }
  }

  void _initializeMap() {
    // Build map URL using property data
    final mapUrl = _buildKuwaitFinderUrl();

    _controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setNavigationDelegate(
        NavigationDelegate(
          onPageFinished: (String url) {
            _injectPACILayer();
          },
        ),
      )
      ..loadRequest(Uri.parse(mapUrl));
  }

  String _buildKuwaitFinderUrl() {
    final baseUrl = 'https://kuwaitfinder.com/map';
    final params = {
      'gov': widget.property['governorate'] ?? '',
      'area': widget.property['area'] ?? '',
      'block': widget.property['block_number'] ?? '',
      'plot': widget.property['plot_number'] ?? '',
      'lang': 'ar',
      'layers': 'paci,cadastral,boundaries'
    };

    // Use coordinates if available from paci_addresses
    if (_paciData != null && _paciData!['latitude'] != null) {
      params['lat'] = _paciData!['latitude'].toString();
      params['lng'] = _paciData!['longitude'].toString();
      params['zoom'] = '17';
    }

    final queryString = params.entries
        .map((e) => '${e.key}=${Uri.encodeComponent(e.value)}')
        .join('&');

    return '$baseUrl?$queryString';
  }

  void _injectPACILayer() {
    const paciLayerScript = '''
      // Add PACI cadastral layer
      function addPACILayer() {
        const paciLayer = {
          type: 'cadastral',
          opacity: 0.6,
          style: {
            strokeColor: '#1A365D',
            strokeWidth: 2,
            fillColor: 'rgba(26, 54, 93, 0.1)'
          },
          data: {
            paciNumber: '${widget.property['paci_number'] ?? ''}',
            block: '${widget.property['block_number'] ?? ''}',
            plot: '${widget.property['plot_number'] ?? ''}'
          }
        };
        
        if (window.mapInstance) {
          window.mapInstance.addLayer(paciLayer);
        }
      }
      
      if (document.readyState === 'complete') {
        addPACILayer();
      } else {
        window.addEventListener('load', addPACILayer);
      }
    ''';

    _controller.runJavaScript(paciLayerScript);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Stack(
          children: [
            WebViewWidget(controller: _controller),
            // PACI Info Card
            Positioned(
              top: 8,
              right: 8,
              child: _buildPACIInfoCard(),
            ),
            // Control Buttons
            if (widget.showControls)
              Positioned(
                bottom: 8,
                left: 8,
                child: _buildControlButtons(),
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildPACIInfoCard() {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.95),
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 4,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'العنوان الرسمي PACI',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              fontFamily: 'Cairo',
            ),
          ),
          SizedBox(height: 4),
          Text(
            '${widget.property['governorate'] ?? ''} - ${widget.property['area'] ?? ''}',
            style: TextStyle(fontSize: 11, fontFamily: 'Cairo'),
          ),
          Text(
            'قطعة ${widget.property['block_number'] ?? ''} - قسيمة ${widget.property['plot_number'] ?? ''}',
            style: TextStyle(fontSize: 11, fontFamily: 'Cairo'),
          ),
          if (widget.property['paci_number'] != null)
            Container(
              margin: EdgeInsets.only(top: 4),
              padding: EdgeInsets.symmetric(horizontal: 6, vertical: 2),
              decoration: BoxDecoration(
                color: Color(0xFF1A365D),
                borderRadius: BorderRadius.circular(4),
              ),
              child: Text(
                widget.property['paci_number']!,
                style: TextStyle(
                  fontSize: 10,
                  color: Colors.white,
                  fontFamily: 'Courier',
                ),
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildControlButtons() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        FloatingActionButton(
          mini: true,
          backgroundColor: Colors.white,
          onPressed: _openInKuwaitFinder,
          child: Icon(Icons.open_in_new, color: Color(0xFF1A365D), size: 20),
        ),
        SizedBox(height: 8),
        FloatingActionButton(
          mini: true,
          backgroundColor: Colors.white,
          onPressed: _shareLocation,
          child: Icon(Icons.share, color: Color(0xFF1A365D), size: 20),
        ),
      ],
    );
  }

  void _openInKuwaitFinder() {
    // Open in Kuwait Finder app/website
    final url = _buildKuwaitFinderUrl();
    // Launch URL
  }

  void _shareLocation() {
    // Share PACI location
    final shareText = '''
العقار: ${widget.property['property_type'] ?? 'عقار'}
${widget.property['governorate']} - ${widget.property['area']}
قطعة ${widget.property['block_number']} - قسيمة ${widget.property['plot_number']}
PACI: ${widget.property['paci_number'] ?? 'غير متوفر'}
    ''';
    // Share implementation
  }
}
// Set your widget name, define your parameter, and then add the
// boilerplate code using the green button on the right!
