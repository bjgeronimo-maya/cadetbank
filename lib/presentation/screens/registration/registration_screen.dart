import 'package:cadetbank/core/navigation/routes.dart';
import 'package:cadetbank/core/res/values/dimens.dart';
import 'package:cadetbank/core/res/values/strings.dart';
import 'package:cadetbank/presentation/screens/registration/widgets/registration_form.dart';
import 'package:cadetbank/presentation/screens/registration/widgets/registration_logo.dart';
import 'package:flutter/material.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(),
        body: const Padding(
          padding: EdgeInsets.symmetric(horizontal: Dimens.s20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: Dimens.s50),
              RegistrationLogo(),
              SizedBox(height: Dimens.s20),
              RegistrationForm(),
            ],
          ),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(Dimens.s20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  Strings.kContinue,
                  style: Theme.of(context).textTheme.labelMedium,
                ),
              ),
              const SizedBox(height: Dimens.s12),
              TextButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, Routes.login);
                },
                child: Text(
                  Strings.alreadyHaveAccount,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),
            ],
          ),
        ),
      );
}
