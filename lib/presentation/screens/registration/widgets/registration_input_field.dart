import 'package:flutter/material.dart';

class RegistrationInputField extends StatelessWidget {
  final String label;
  final String hint;
  final String? errorText;
  final bool isEnabled;
  final TextEditingController? textController; 
  final void Function(String)? onChanged;

  const RegistrationInputField({
    super.key,
    required this.label,
    required this.hint,
    this.errorText,
    this.isEnabled = true,
    this.textController, 
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: Colors.grey),
        ),
        TextField(
          controller: textController, // Bind the controller
          onChanged: onChanged,
          enabled: isEnabled,
          cursorColor: Colors.green,
          style: const TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: TextStyle(color: Colors.grey.shade400),
            errorText: errorText,
            border: InputBorder.none,
            contentPadding: const EdgeInsets.symmetric(vertical: 8),
          ),
        ),
      ],
    );
  }
}