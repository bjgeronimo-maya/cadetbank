
import 'package:cadetbank/features/login/widgets/login_button.dart';
import 'package:cadetbank/features/login/widgets/login_form.dart';
import 'package:cadetbank/features/login/widgets/login_logo.dart';
import 'package:cadetbank/res/dimens.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) => const Scaffold(
    body: Center(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: Dimens.s20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            LoginLogo(),

            SizedBox(height: Dimens.s20),

            LoginForm(),
          ],
        ),
      ),
    ),
    bottomNavigationBar: LoginButton()
  );
}
