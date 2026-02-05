
import 'package:cadetbank/core/navigation/routes.dart';
import 'package:cadetbank/core/res/values/dimens.dart';
import 'package:cadetbank/core/res/values/strings.dart';
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
            RichText(
              text: const TextSpan(
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                ),
                children: <TextSpan>[
                  TextSpan(
                      text: 'Join '
                  ),
                  TextSpan(
                    style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.w800
                    ),
                    text: 'Maya',
                  ),
                  TextSpan(
                      text: ' today!'
                  ),
                ],
              ),
            ),

            const SizedBox(height: Dimens.s10),

            Image.network(
              'https://media.tenor.com/JGtEAA81MqUAAAAj/blob-cat-party-blob.gif',
              width: 50,
              height: 50,
            ),

            const SizedBox(height: Dimens.s10),

            Text(
              'Fill in your details below to get started.',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey.shade600,
                fontWeight: FontWeight.w400,
              ),
            ),

            const SizedBox(height: Dimens.s20),

            const RegistrationForm(),
          ],
        ),
      ),
    ),
    bottomNavigationBar: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ElevatedButton(
          onPressed: () {},
          child: const Text(Strings.kContinue),
        ),

        const SizedBox(height: Dimens.s20),

        ElevatedButton(
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
  );
}
