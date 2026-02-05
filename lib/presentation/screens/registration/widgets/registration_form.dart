import 'package:cadetbank/core/res/values/strings.dart';
import 'package:cadetbank/presentation/screens/registration/widgets/middleNameToggle.dart';
import 'package:flutter/material.dart';
import 'register_text_field.dart';

class RegistrationForm extends StatefulWidget {
  const RegistrationForm({super.key});

  @override
  State<RegistrationForm> createState() => _RegistrationFormState();
}

class _RegistrationFormState extends State<RegistrationForm> {
  bool noMiddleName = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const RegisterTextField(
          keyboardType: TextInputType.name,
          hintText: Strings.firstNamehint,
        ),
        const RegisterTextField(
          keyboardType: TextInputType.name,
          hintText: Strings.middleNameHint,
        ),
        MiddleNameToggle(
          value: noMiddleName,
          onChanged: (value) {
            setState(() {
              noMiddleName = value;
            });
          },
        ),
        const RegisterTextField(
          keyboardType: TextInputType.name,
          hintText: Strings.lastNameHint,
        ),
        const RegisterTextField(
          keyboardType: TextInputType.emailAddress,
          hintText: Strings.emailHint,
        ),
      ],
    );
  }
}
