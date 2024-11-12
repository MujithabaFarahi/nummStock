import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final double height;
  final double width;
  final double borderRadius;
  final Color backgroundColor;
  final Color foregroundColor;
  final String fontFamily;
  final FontWeight fontWeight;
  final double fontSize;
  final bool isLoading;
  final List<BoxShadow> boxShadow;

  const PrimaryButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.height = 50.0,
    this.width = 300.0,
    this.borderRadius = 8.0,
    this.backgroundColor = const Color.fromARGB(255, 56, 88, 255),
    this.foregroundColor = Colors.white,
    this.fontFamily = 'Outfit',
    this.fontWeight = FontWeight.w600,
    this.fontSize = 14,
    this.isLoading = false,
    this.boxShadow = const [
      BoxShadow(
        color: Color(0x40000000),
        offset: Offset(0, 4),
        blurRadius: 4,
      ),
    ], // Default box shadow
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        boxShadow: boxShadow,
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          foregroundColor: foregroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
        ),
        child: Text(
          text,
          style: TextStyle(
            fontFamily: fontFamily,
            fontSize: fontSize,
            fontWeight: fontWeight,
          ),
        ),
      ),
    );
  }
}
