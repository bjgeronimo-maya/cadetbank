import 'package:flutter/material.dart';

class RegisterTextField extends StatelessWidget {
  final TextInputType keyboardType;
  final String hintText;

  const RegisterTextField({
    Key? key,
    this.keyboardType = TextInputType.name,
    this.hintText = 'Enter name',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          keyboardType: keyboardType,
          decoration: InputDecoration(
            hintText: hintText,
            filled: true,
            fillColor: const Color(0xFFE8E8E8),
            contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide.none,
            ),
          ),
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}