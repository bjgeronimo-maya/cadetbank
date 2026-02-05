import 'package:cadetbank/core/navigation/routes.dart';
import 'package:cadetbank/core/res/values/dimens.dart';
import 'package:cadetbank/core/res/values/strings.dart';
import 'package:cadetbank/presentation/screens/login/cubits/login/login_cubit.dart';
import 'package:cadetbank/presentation/screens/login/cubits/login/login_state.dart';
import 'package:cadetbank/presentation/screens/login/cubits/login_form/login_form_cubit.dart';
import 'package:cadetbank/presentation/screens/login/widgets/login_form.dart';
import 'package:cadetbank/presentation/screens/login/widgets/login_logo.dart';
import 'package:cadetbank/presentation/widgets/ziggy/ziggy_overlay.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> with ZiggyOverlay {

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(),
    body: BlocListener<LoginCubit, LoginState>(
      listener: (context, state) => state.whenOrNull(
        loading: () => showZiggyOverlay(context),
        success: () => {
          popZiggyOverlay(),
          Navigator.pushNamed(context, Routes.home),
        },
        failed: (_) => {
          popZiggyOverlay(),
          Navigator.pushNamed(context, Routes.home),
        },
      ),
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: Dimens.s20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: Dimens.s100),

            LoginLogo(),

            SizedBox(height: Dimens.s20),

            LoginForm(),
          ],
        ),
      ),
    ),
    bottomNavigationBar: Padding(
      padding: const EdgeInsets.all(Dimens.s20),
      child:  ElevatedButton(
        onPressed: () {
          final username = context.read<LoginFormCubit>().state.username;
          final password = context.read<LoginFormCubit>().state.password;

          context.read<LoginCubit>().login(
            username: username,
            password: password,
          );
        },
        child: Text(
          Strings.login,
          style: Theme.of(context).textTheme.labelMedium,
        ),
      ),
    ),
  );
}
