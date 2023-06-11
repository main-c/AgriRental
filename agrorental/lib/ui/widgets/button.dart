import 'package:agrorental/ui/theme/theme.dart';
import 'package:flutter/material.dart';

Widget buildButton(String text, Color color, VoidCallback onPressed) {
  return Container(
    width: double.infinity,
    height: 60,
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
      ),
      onPressed: onPressed,
      child: Text(text, style: AppTheme.lightTheme.textTheme.headlineMedium),
    ),
  );
}

Widget buildIconButton(String text, Icon icon, Color color, Color colorText,
    VoidCallback onPressed,
    {double? width, double? height}) {
  return Container(
    width: width ?? 150,
    height: height ?? 50,
    child: ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
      ),
      onPressed: onPressed,
     
      icon: icon,
      label: Text(text,
          style: AppTheme.lightTheme.textTheme.headlineMedium
              ?.copyWith(color: colorText)),
    ),
  );
}

Widget buildActionButton(
    BuildContext context, Icon icon, VoidCallback onPressed) {
  return Padding(
    padding: const EdgeInsets.all(8),
    child: Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100), color: Colors.white),
      child: IconButton(
        highlightColor: Colors.white,
        icon: icon,
        onPressed: onPressed,
      ),
    ),
  );
}
