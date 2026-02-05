import 'package:cadetbank/core/res/values/dimens.dart';
import 'package:cadetbank/core/res/values/strings.dart';
import 'package:cadetbank/presentation/widgets/input_field.dart';
import 'package:flutter/material.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) => Column(
    children: [
      InputField(
        label: Strings.username,
        hint: Strings.usernameHint,
        onChanged: (_) {},
      ),

      const SizedBox(height: Dimens.s16),

      InputField(
        label: Strings.password,
        hint: Strings.passwordHint,
        keyboardType: TextInputType.visiblePassword,
        onChanged: (_) {},
      ),
    ],
  );
}
