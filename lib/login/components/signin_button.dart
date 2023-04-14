import 'package:flutter/material.dart';

class SigninButton extends StatelessWidget {
  final Function()? onTap;

  const SigninButton({Key? key, required this.onTap}) : super(key: key);

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
            "Sign In",
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
