import 'package:flutter/material.dart';

class CustomElevatedBtn extends StatelessWidget {
  final String btnName;
  final VoidCallback onTapp;
  final Color color;
  final double? elevt;
  final TextStyle? style;
  const CustomElevatedBtn(
      {super.key,
      required this.btnName,
      required this.onTapp,
      required this.color,
      this.elevt,
      this.style});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        onTapp();
      },
      style: ElevatedButton.styleFrom(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        backgroundColor: color,
        elevation: elevt,
      ),
      child: Text(
        btnName,
        style: style,
      ),
    );
  }
}
