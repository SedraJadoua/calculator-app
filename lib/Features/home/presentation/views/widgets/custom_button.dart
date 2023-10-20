import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomButton extends StatelessWidget {
  final Color textColor;
  final Function()? onpressed;
  final String text;

  const CustomButton({
    Key? key,
    required this.textColor,
    required this.text,
    required this.onpressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onpressed,
      isSemanticButton: true,
      style: const ButtonStyle(
        elevation: MaterialStatePropertyAll(2),
        shape: MaterialStatePropertyAll(
          CircleBorder(),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 17),
        child: Text(
          text,
          style: TextStyle(
            color: textColor,
            fontSize: 26,
          ),
        ),
      ),
    );
  }
}
