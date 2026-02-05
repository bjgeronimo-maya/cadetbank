import 'package:cadetbank/presentation/screens/registration/widgets/registration_input_field.dart';
import 'package:flutter/material.dart';

class RegistrationForm extends StatefulWidget {
  const RegistrationForm({super.key});

  @override
  State<RegistrationForm> createState() => RegistrationFormState();
}

class RegistrationFormState extends State<RegistrationForm> {
  // Controllers to track text input
  final TextEditingController _firstController = TextEditingController();
  final TextEditingController _middleController = TextEditingController();
  final TextEditingController _lastController = TextEditingController();

  bool _noMiddleName = false;
  bool _showErrors = false;

  // Validation Logic
  bool validate() {
    setState(() => _showErrors = true);

    bool isFirstValid = _firstController.text.trim().isNotEmpty;
    bool isLastValid = _lastController.text.trim().isNotEmpty;
    bool isMiddleValid = _noMiddleName || _middleController.text.trim().isNotEmpty;

    return isFirstValid && isLastValid && isMiddleValid;
  }

  @override
  void dispose() {
    _firstController.dispose();
    _middleController.dispose();
    _lastController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // First Name Field
        RegistrationInputField(
          label: "First name",
          hint: "Enter first name",
          textController: _firstController, // Pass the controller
          onChanged: (val) => setState(() {}), // Refresh to clear error while typing
          errorText: (_showErrors && _firstController.text.trim().isEmpty)
              ? "Please enter your first name"
              : null,
        ),
        
        const SizedBox(height: 24),
        
        // Middle Name Field
        RegistrationInputField(
          label: "Middle name",
          hint: "Enter middle name",
          isEnabled: !_noMiddleName,
          textController: _middleController,
          onChanged: (val) => setState(() {}),
          errorText: (_showErrors && !_noMiddleName && _middleController.text.trim().isEmpty)
              ? "Please enter your middle name"
              : null,
        ),

        const SizedBox(height: 8),

        Row(
          children: [
            Checkbox(
              value: _noMiddleName,
              onChanged: (val) {
                setState(() {
                  _noMiddleName = val!;
                  if (_noMiddleName) {
                    _middleController.clear(); // Clear text if they have no middle name
                  }
                });
              },
              activeColor: Colors.black,
            ),
            const Text("I have no legal middle name", style: TextStyle(color: Colors.grey)),
          ],
        ),
        
        const SizedBox(height: 24),
        
        // Last Name Field
        RegistrationInputField(
          label: "Last name",
          hint: "Enter last name",
          textController: _lastController,
          onChanged: (val) => setState(() {}),
          errorText: (_showErrors && _lastController.text.trim().isEmpty)
              ? "Please enter your last name"
              : null,
        ),
      ],
    );
  }
}