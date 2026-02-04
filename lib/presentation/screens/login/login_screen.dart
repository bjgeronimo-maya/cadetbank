import 'package:cadetbank/core/res/values/dimens.dart';
import 'package:cadetbank/core/res/values/strings.dart';
import 'package:cadetbank/presentation/screens/login/widgets/login_form.dart';
import 'package:cadetbank/presentation/screens/login/widgets/login_logo.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
    body: const Center(
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
    bottomNavigationBar: Padding(
      padding: const EdgeInsets.symmetric(vertical: Dimens.s20),
      child:  ElevatedButton(
        onPressed: () {},
        child: const Text(Strings.login),
      ),
    ),
  );
}
