
import 'package:cadetbank/core/navigation/routes.dart';
import 'package:cadetbank/core/res/values/dimens.dart';
import 'package:cadetbank/core/res/values/strings.dart';
import 'package:cadetbank/presentation/screens/home/home_screen.dart';
import 'package:cadetbank/presentation/screens/login/widgets/login_logo.dart';
import 'package:cadetbank/presentation/screens/registration/widgets/registration_form.dart';
import 'package:flutter/material.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
    body: Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: Dimens.s20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const LoginLogo(),

            const SizedBox(height: Dimens.s14),

            RichText(
              text: const TextSpan(
                style: TextStyle(color: Colors.black87, fontWeight: FontWeight.w600),
                children: <TextSpan>[
                  TextSpan(
                      text: 'Start an '
                  ),
                  TextSpan(
                    style: TextStyle(color: Colors.green, fontWeight: FontWeight.w900),
                    text: 'account',
                  ),
                ],
              ),
            ),

            const SizedBox(height: Dimens.s20),

            const RegistrationForm(),
          ],
        ),
      ),
    ),
    bottomNavigationBar: Padding(
      padding: const EdgeInsets.all(Dimens.s20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HomeScreen())
              );
            },
            child: Text(
              Strings.kContinue,
              style: Theme.of(context).textTheme.labelMedium
            ),
          ),

          const SizedBox(height: Dimens.s10),

          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.grey[400],
            ),
            onPressed: () {
              Navigator.pushReplacementNamed(context, Routes.login);
            },
            child: Text(
              Strings.login,
              style: Theme.of(context).textTheme.labelMedium,
            ),
          )
        ],
      )
    )
  );
}
