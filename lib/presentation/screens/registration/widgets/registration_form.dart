import 'package:cadetbank/core/res/values/strings.dart';
import 'package:cadetbank/core/res/values/dimens.dart';
import 'package:cadetbank/presentation/widgets/input_field.dart';
import 'package:flutter/material.dart';

class RegistrationForm extends StatelessWidget {
  const RegistrationForm({super.key});

  @override
  Widget build(BuildContext context) => Column(
    children: [
      InputField(
        label: Strings.username,
        hint: Strings.usernameHint,
        onChanged: (value) => const {},
      ),

      const SizedBox(height: Dimens.s16),

      InputField(
        label: Strings.email,
        hint: Strings.emailHint,
        onChanged: (value) => const {},
      ),

      const SizedBox(height: Dimens.s16),

      InputField(
        label: Strings.number,
        hint: Strings.mobileNumberHint,
        onChanged: (value) => const {},
      ),

      const SizedBox(height: Dimens.s16),

      InputField(
        label: Strings.password,
        hint: Strings.passwordHint,
        onChanged: (value) => const {},
      ),

      const SizedBox(height: Dimens.s16),

      InputField(
        label: Strings.confirmPassword,
        hint: Strings.confirmPasswordHint,
        onChanged: (value) => const {},
      ),
    ],
  );
}
