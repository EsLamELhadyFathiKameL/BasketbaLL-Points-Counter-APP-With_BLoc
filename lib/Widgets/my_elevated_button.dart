import 'package:flutter/material.dart';

class MyELevatedButton extends StatelessWidget {
  const MyELevatedButton({
    super.key,
    required this.buttonText,
    this.onPressed,
  });
  final String buttonText;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.orange,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      onPressed: onPressed,
      child: Text(
        buttonText,
        style: const TextStyle(
          fontSize: 15,
          fontFamily: "Pacifico",
          color: Colors.black,
        ),
      ),
    );
  }
}
