import 'package:flutter/material.dart';

double bodyMediumFontSize(context) {
  return Theme.of(context).textTheme.bodyMedium?.fontSize ?? 20;
}

double bodySmallFontSize(context) {
  return Theme.of(context).textTheme.bodySmall?.fontSize ?? 10;
}

double titleLargeFontSize(context) {
  return Theme.of(context).textTheme.titleLarge?.fontSize ?? 30;
}

// Primary Bold
TextStyle primaryBold(context) {
  return const TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );
}

// Primary noraml
TextStyle primaryNormal(context) {
  return const TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.normal,
    color: Colors.white,
  );
}
