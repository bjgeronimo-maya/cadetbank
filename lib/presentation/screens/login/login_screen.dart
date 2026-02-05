import 'package:cadetbank/core/navigation/routes.dart';
import 'package:cadetbank/core/res/values/dimens.dart';
import 'package:cadetbank/core/res/values/strings.dart';
import 'package:cadetbank/presentation/screens/login/widgets/login_form.dart';
import 'package:cadetbank/presentation/screens/login/widgets/login_logo.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(),
    body: const Padding(
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
    bottomNavigationBar: Padding(
      padding: const EdgeInsets.all(Dimens.s20),
      child:  ElevatedButton(
        onPressed: () {
          Navigator.of(context).pushReplacementNamed(Routes.home);
        },
        child: Text(
          Strings.login,
          style: Theme.of(context).textTheme.labelMedium,
        ),
      ),
    ),
  );
}
