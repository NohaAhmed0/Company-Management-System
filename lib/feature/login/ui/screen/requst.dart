import 'dart:ui';

import 'package:depi_project/core/theming/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CompletionPopup extends StatelessWidget {
  const CompletionPopup({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      contentPadding: const EdgeInsets.all(30.0),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[

          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child: const Icon(
              Icons.check,
              color: green,
              size: 50,
            ),
          ),
          const SizedBox(height: 25.0),

          const Text(
            'Your request has been completed',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 10.0),

          const Text(
            'The worker will be dispatched on time',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 25.0),
          // زر "Home"
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                // منطق الانتقال إلى شاشة Home
                Navigator.of(context).pop(); // إغلاق النافذة المنبثقة
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: green,
                padding: const EdgeInsets.symmetric(vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                elevation: 0,
              ),
              child: const Text(
                'Home',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          const SizedBox(height: 15.0),
          // زر "Cancel" (نص فقط)
          TextButton(
            onPressed: () {
              // منطق إلغاء الإجراء أو إغلاق النافذة
              Navigator.of(context).pop(); // إغلاق النافذة المنبثقة
            },
            child: const Text(
              'Cancel',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
          ),
        ],
      ),
    );
  }
}