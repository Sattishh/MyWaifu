import 'package:flutter/material.dart';

class SignupButton extends StatelessWidget {
  final Function()? onTap;

  const SignupButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(18),
        margin: const EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        child: const Center(
          child: Text(
            "Sign Up",
            style: TextStyle(
              color: Color(0xff408D4D),
              fontWeight: FontWeight.bold,
              fontSize: 18,
              fontFamily: 'Inter',
            ),
          ),
        ),
      ),
    );
  }
}
