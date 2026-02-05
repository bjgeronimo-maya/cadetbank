import 'package:cadetbank/core/res/values/dimens.dart';
import 'package:cadetbank/core/res/values/strings.dart';
import 'package:cadetbank/presentation/screens/login/cubits/login_form/login_form_cubit.dart';
import 'package:cadetbank/presentation/widgets/input_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) => Column(
    children: [
      InputField(
        label: Strings.username,
        hint: Strings.usernameHint,
        onChanged: (value) => context.read<LoginFormCubit>().usernameChanged(value),
      ),

      const SizedBox(height: Dimens.s16),

      InputField(
        label: Strings.password,
        hint: Strings.passwordHint,
        keyboardType: TextInputType.visiblePassword,
        onChanged: (value) => context.read<LoginFormCubit>().passwordChanged(value),
      ),
    ],
  );
}
