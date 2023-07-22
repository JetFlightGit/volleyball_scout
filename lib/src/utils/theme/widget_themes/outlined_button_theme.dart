import 'package:flutter/material.dart';

// Light Theme
final lightOutlinedButtonTheme = OutlinedButtonThemeData(
  style: OutlinedButton.styleFrom(
    shape: RoundedRectangleBorder(),
  ),
);

// Dark Theme
final darkOutlinedButtonTheme = OutlinedButtonThemeData(
  style: OutlinedButton.styleFrom(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(
          40.0), // Adjust the value as per your preference
    ),
  ),
);
