import 'package:cadetbank/core/res/values/dimens.dart';
import 'package:cadetbank/core/res/values/strings.dart';
import 'package:cadetbank/presentation/widgets/input_field.dart';
import 'package:flutter/material.dart';

class RegistrationForm extends StatelessWidget {
  const RegistrationForm({super.key});

  @override
  Widget build(BuildContext context) => Column(
    children: [
      InputField(
        label: 'Name',
        hint: Strings.nameHint,
        onChanged: (value) {},
      ),
      const SizedBox(height: Dimens.s24),
      InputField(
        label: 'Email',
        hint: Strings.emailHint,
        keyboardType: TextInputType.emailAddress,
        onChanged: (value) {},
      ),
      const SizedBox(height: Dimens.s24),
      InputField(
        label: 'Mobile Number',
        hint: Strings.mobileNumberHint,
        keyboardType: TextInputType.number,
        onChanged: (value) {},
      ),
      const SizedBox(height: Dimens.s24),
      InputField(
        label: Strings.password,
        hint: Strings.passwordHint,
        keyboardType: TextInputType.visiblePassword,
        onChanged: (value) {},
      ),
    ],
  );
}
