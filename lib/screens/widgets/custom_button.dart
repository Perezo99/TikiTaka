import 'package:flutter/material.dart';
import 'package:tikitaka/utils/color_manager.dart';
import 'package:tikitaka/utils/responsive.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onTap;
  final String text;
  const CustomButton({
    super.key,
    required this.onTap,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Responsive(
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black54,
              blurRadius: 5,
              spreadRadius: 0,
            ),
          ],
        ),
        child: ElevatedButton(
          onPressed: onTap,
          child: Text(
            text,
            style: TextStyle(
              fontSize: 16,
            ),
          ),
          style: ElevatedButton.styleFrom(
            backgroundColor: ColorManager.redColor,
            minimumSize: Size(
              width,
              50,
            ),
          ),
        ),
      ),
    );
  }
}
