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
            label: 'Full Name',
            hint: Strings.nameHint,
            keyboardType: TextInputType.name,
            onChanged: (value) {
              // error handler for name change
            },
          ),

          const SizedBox(height: Dimens.s16),

          InputField(
            label: 'Email Address',
            hint: Strings.emailHint,
            keyboardType: TextInputType.emailAddress,
            onChanged: (value) {
              // // error handler for email change
            },
          ),

          const SizedBox(height: Dimens.s16),

          InputField(
            label: 'Mobile Number',
            hint: Strings.mobileNumberHint,
            keyboardType: TextInputType.number,
            onChanged: (value) {
              // // error handler for number change
            },
          ),

          const SizedBox(height: Dimens.s16),

          InputField(
            label: 'Password',
            hint: Strings.passwordHint,
            keyboardType: TextInputType.visiblePassword,
            onChanged: (value) {
              // // error handler for password change
            },
          ),
        ],
      );
}