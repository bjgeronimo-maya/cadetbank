import 'package:cadetbank/core/res/values/strings.dart';
import 'package:flutter/material.dart';

class RegistrationForm extends StatelessWidget {
  const RegistrationForm({super.key});

  @override
  Widget build(BuildContext context) => const Column(
    children: [
      TextField(
        keyboardType: TextInputType.name,
        decoration: InputDecoration(hintText: Strings.nameHint),
      ),

      TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(hintText: Strings.emailHint),
      ),

      TextField(
        keyboardType: TextInputType.number,
        decoration: InputDecoration(hintText: Strings.mobileNumberHint),
      ),

      TextField(
        keyboardType: TextInputType.visiblePassword,
        decoration: InputDecoration(hintText: Strings.passwordHint),
      ),
    ],
  );
}
