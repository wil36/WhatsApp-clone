import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_ui_complete/colors.dart';

class CustumButton extends StatelessWidget {
  final String text;
  final VoidCallback onPress;
  const CustumButton({
    super.key,
    required this.text,
    required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text(
        text,
        style: const TextStyle(
          color: blackColor,
        ),
      ),
      onPressed: onPress,
      style: ElevatedButton.styleFrom(
        primary: tabColor,
        minimumSize: const Size(double.infinity, 50),
      ),
    );
  }
}
