import 'package:flutter/material.dart';
import 'package:responsive_dashboard_app/utils/app_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key, required this.text, required this.isTextButton});

  final String text;
  final bool isTextButton;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          elevation: 0,
          backgroundColor:
              isTextButton ? Colors.white : const Color(0xFF4DB7F2),
        ),
        onPressed: () {},
        child: Text(
          text,
          style: AppStyles.styleBold16(context).copyWith(
            color: isTextButton ? const Color(0xFF4DB7F2) : Colors.white,
          ),
        ),
      ),
    );
  }
}
