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
            keyboardType: TextInputType.name,
            onChanged: (value) {},
          ),
          const SizedBox(height: Dimens.s16),
          InputField(
            label: 'Email',
            hint: Strings.emailHint,
            keyboardType: TextInputType.emailAddress,
            onChanged: (value) {},
          ),
          const SizedBox(height: Dimens.s16),
          InputField(
            label: 'Mobile Number',
            hint: Strings.mobileNumberHint,
            keyboardType: TextInputType.phone,
            onChanged: (value) {},
          ),
          const SizedBox(height: Dimens.s16),
          InputField(
            label: Strings.password,
            hint: Strings.passwordHint,
            keyboardType: TextInputType.visiblePassword,
            onChanged: (value) {},
          ),
        ],
      );
}
