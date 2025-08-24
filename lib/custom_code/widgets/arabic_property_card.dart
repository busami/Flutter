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

// Create as Custom Widget in FlutterFlow
class ArabicPropertyCard extends StatelessWidget {
  final String propertyId;
  final String paciNumber;
  final String governorate;
  final String area;
  final int price;
  final String status;
  final int viewCount;
  final int inquiryCount;

  const ArabicPropertyCard({
    required this.propertyId,
    required this.paciNumber,
    required this.governorate,
    required this.area,
    required this.price,
    required this.status,
    required this.viewCount,
    required this.inquiryCount,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 4,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end, // RTL alignment
        children: [
          // PACI Number
          Text(
            paciNumber,
            style: TextStyle(
              fontSize: 12,
              fontFamily: 'monospace',
              backgroundColor: Colors.grey[100],
            ),
            textDirection: TextDirection.ltr,
          ),
          SizedBox(height: 8),

          // Location
          Text(
            '$governorate - $area',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
            textDirection: TextDirection.rtl,
            textAlign: TextAlign.right,
          ),

          // Price
          Text(
            '${price.toString().replaceAllMapped(RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'), (Match m) => '${m[1]},')} د.ك',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.green[600],
            ),
            textDirection: TextDirection.rtl,
            textAlign: TextAlign.right,
          ),

          SizedBox(height: 12),

          // Stats and Status Row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Action Buttons
              Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.edit, color: Colors.blue),
                    onPressed: () => Navigator.pushNamed(
                        context, '/property-edit/$propertyId'),
                  ),
                  IconButton(
                    icon: Icon(Icons.visibility, color: Colors.green),
                    onPressed: () => Navigator.pushNamed(
                        context, '/property-view/$propertyId'),
                  ),
                ],
              ),

              // Stats and Status (RTL)
              Row(
                textDirection: TextDirection.rtl,
                children: [
                  // Status Chip
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: status == 'available'
                          ? Colors.green[100]
                          : Colors.yellow[100],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      status == 'available' ? 'متاح' : 'قيد المراجعة',
                      style: TextStyle(
                        fontSize: 12,
                        color: status == 'available'
                            ? Colors.green[800]
                            : Colors.yellow[800],
                      ),
                    ),
                  ),

                  SizedBox(width: 8),

                  // View Count
                  Text('$viewCount مشاهدة',
                      style: TextStyle(fontSize: 12, color: Colors.grey)),
                  SizedBox(width: 8),

                  // Inquiry Count
                  Text('$inquiryCount استفسار',
                      style: TextStyle(fontSize: 12, color: Colors.grey)),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
// Set your widget name, define your parameter, and then add the
// boilerplate code using the green button on the right!
