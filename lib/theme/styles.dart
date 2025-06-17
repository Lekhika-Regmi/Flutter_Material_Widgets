import 'package:flutter/material.dart';

class AppStyles {
  static final TextStyle categoryTitle = TextStyle(
    fontSize: 25,
    fontWeight: FontWeight.bold,
    color: Colors.teal[700],
  );
  // Subcategory headings (like "FloatingActionButton", "TextButton", etc.)
  static const TextStyle subcategoryTitle = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: Colors.teal,
  );

  // Widget description text
  static const TextStyle descriptionText = TextStyle(
    fontSize: 16,
    color: Colors.black87,
  );

  // Padding for section containers
  static const EdgeInsets sectionPadding = EdgeInsets.all(12);

  // Rounded container box decoration
  static final BoxDecoration sectionBox = BoxDecoration(
    color: Colors.teal.shade50,
    borderRadius: BorderRadius.circular(12),
  );

  // Reusable container widget for category content
  static Widget categoryContentContainer({required Widget child}) {
    return Container(
      width: double.infinity,
      decoration: sectionBox,
      padding: sectionPadding,
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      child: child,
    );
  }
}
