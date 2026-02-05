import 'package:flutter/material.dart';

class MayaInputField extends StatefulWidget {
  const MayaInputField({
    required this.label,
    required this.hint,
    this.onChanged,
    this.keyboardType,
    super.key,
  });

  final String label;
  final String hint;
  final ValueChanged<String>? onChanged;
  final TextInputType? keyboardType;

  @override
  State<MayaInputField> createState() => _MayaInputFieldState();
}

class _MayaInputFieldState extends State<MayaInputField> {
  late bool _obscuredText;

  @override
  void initState() {
    super.initState();
    // Password
    _obscuredText = widget.keyboardType == TextInputType.visiblePassword;
  }

  void _toggleVisibility() {
    setState(() => _obscuredText = !_obscuredText);
  }

  @override
  Widget build(BuildContext context) {
    final isPassword = widget.keyboardType == TextInputType.visiblePassword;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.label,
          style: const TextStyle(
            fontSize: 14,
            color: Colors.grey,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 4),
        Stack(
          alignment: Alignment.centerRight,
          children: [
            TextField(
              onChanged: widget.onChanged,
              keyboardType: widget.keyboardType,
              obscureText: _obscuredText,
              cursorColor: Colors.green,
              style: const TextStyle(
                fontSize: 24,
                color: Colors.black,
              ),
              decoration: InputDecoration(
                hintText: widget.hint,
                hintStyle: TextStyle(
                  fontSize: 24,
                  color: Colors.grey.shade300,
                  fontWeight: FontWeight.w400,
                ),
                border: InputBorder.none,
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                contentPadding: isPassword
                    ? const EdgeInsets.only(right: 40)
                    : EdgeInsets.zero,
              ),
            ),

            // Password Field
            if (isPassword)
              IconButton(
                onPressed: _toggleVisibility,
                padding: EdgeInsets.zero,
                constraints: const BoxConstraints(),
                icon: Icon(
                  _obscuredText ? Icons.visibility_off : Icons.visibility,
                  color: Colors.black,
                  size: 24,
                ),
              ),
          ],
        ),
      ],
    );
  }
}
