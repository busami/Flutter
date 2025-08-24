// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// Custom Action: loadBrokerageProperties
// Custom Action: loadBrokerageProperties
// Import Statement (add this in FlutterFlow Custom Action imports section)
import 'package:supabase_flutter/supabase_flutter.dart';

// Action Code:
Future<List<dynamic>> loadBrokerageProperties(
  String? governorateFilter,
  String? propertyTypeFilter,
  String? statusFilter,
) async {
  try {
    var query = Supabase.instance.client.from('brokerage_properties').select('''
          id, sequence_number, paci_number, property_status, property_type,
          governorate, area, block_number, plot_number, price, area_sqm,
          bedrooms, bathrooms, approval_status, visibility, is_featured,
          view_count, inquiry_count, created_at
        ''').is_('deleted_at', null); // Fixed: use .is_() for null checks

    // Apply filters only if they have values
    if (governorateFilter != null && governorateFilter.trim().isNotEmpty) {
      query = query.eq('governorate', governorateFilter);
    }

    if (propertyTypeFilter != null && propertyTypeFilter.trim().isNotEmpty) {
      query = query.eq('property_type', propertyTypeFilter);
    }

    if (statusFilter != null && statusFilter.trim().isNotEmpty) {
      query = query.eq('property_status', statusFilter);
    }

    final response = await query.order('created_at', ascending: false);
    return response; // Remove the cast
  } catch (e) {
    print('Error loading properties: $e');
    return []; // Return empty list on error
  }
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
