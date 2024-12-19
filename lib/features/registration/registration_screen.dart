
import 'package:cadetbank/features/login/widgets/login_button.dart';
import 'package:cadetbank/features/login/widgets/login_form.dart';
import 'package:cadetbank/features/login/widgets/login_logo.dart';
import 'package:cadetbank/features/registration/widgets/reg_login_button.dart';
import 'package:cadetbank/features/registration/widgets/registration_button.dart';
import 'package:cadetbank/features/registration/widgets/reigstration_form.dart';
import 'package:cadetbank/res/dimens.dart';
import 'package:flutter/cupertino.dart';
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
            RichText(
              text: const TextSpan(
                style: TextStyle(color: Colors.black),
                children: <TextSpan>[
                  TextSpan(
                      text: 'Start an'
                  ),
                  TextSpan(
                    style: TextStyle(color: Colors.green),
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
    bottomNavigationBar: const Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        RegistrationButton(),

        SizedBox(height: 20),

        RegLoginButton()
      ],
    )
  );
}
