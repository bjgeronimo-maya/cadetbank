
import 'package:cadetbank/core/navigation/routes.dart';
import 'package:cadetbank/core/res/values/dimens.dart';
import 'package:cadetbank/core/res/values/strings.dart';
import 'package:cadetbank/presentation/screens/registration/widgets/registration_form.dart';
import 'package:flutter/material.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
    body: SafeArea(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: Dimens.s20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              RichText(
                text: TextSpan(
                  style: Theme.of(context).textTheme.headlineLarge?.copyWith(color: Colors.black),
                  children: <TextSpan>[
                    TextSpan(
                        text: 'Register with ',
                        style: TextStyle(
                          fontSize: Theme.of(context).textTheme.headlineLarge?.fontSize,
                        )
                    ),
                    TextSpan(
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.bold,
                        fontSize: Theme.of(context).textTheme.headlineLarge?.fontSize,
                      ),
                      text: 'Maya',
                    ),
                  ],
                ),
              ),

              const SizedBox(height: Dimens.s20),

              const RegistrationForm(),

              const SizedBox(height: Dimens.s20),
            ],
          ),
        ),
      ),
    ),
    bottomNavigationBar: Padding(
      padding: const EdgeInsets.all(Dimens.s20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              child: const Text(Strings.kContinue),
            ),
          ),

          const SizedBox(height: Dimens.s20),

          SizedBox(
            width: double.infinity,
            child: OutlinedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, Routes.login);
              },
              child: Text(
                Strings.login,
                style: Theme.of(context).textTheme.labelMedium,
              ),
            ),
          )
        ],
      ),
    )
  );
}
