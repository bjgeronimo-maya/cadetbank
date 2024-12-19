import 'package:cadetbank/res/strings.dart';
import 'package:flutter/material.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) => const Column(
    children: [
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
