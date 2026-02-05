import 'package:cadetbank/core/res/values/dimens.dart';
import 'package:cadetbank/core/res/values/strings.dart';
import 'package:cadetbank/presentation/screens/registration/cubits/registration_form_cubit.dart';
import 'package:cadetbank/presentation/widgets/input_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegistrationForm extends StatelessWidget {
  const RegistrationForm({super.key});

  @override
  Widget build(BuildContext context) => Column(
        children: [
          InputField(
            label: Strings.name,
            hint: Strings.nameHint,
            keyboardType: TextInputType.name,
            onChanged: (value) =>
                context.read<RegistrationFormCubit>().nameChanged(value),
          ),
          const SizedBox(height: Dimens.s16),
          InputField(
            label: Strings.email,
            hint: Strings.emailHint,
            keyboardType: TextInputType.emailAddress,
            onChanged: (value) =>
                context.read<RegistrationFormCubit>().emailChanged(value),
          ),
          const SizedBox(height: Dimens.s16),
          InputField(
            label: Strings.mobileNumber,
            hint: Strings.mobileNumberHint,
            keyboardType: TextInputType.number,
            onChanged: (value) => context
                .read<RegistrationFormCubit>()
                .mobileNumberChanged(value),
          ),
          const SizedBox(height: Dimens.s16),
          InputField(
            label: Strings.password,
            hint: Strings.passwordHint,
            keyboardType: TextInputType.visiblePassword,
            onChanged: (value) =>
                context.read<RegistrationFormCubit>().passwordChanged(value),
          ),
        ],
      );
}
