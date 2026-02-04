
import 'package:cadetbank/core/navigation/routes.dart';
import 'package:cadetbank/core/res/values/assets.dart';
import 'package:cadetbank/core/res/values/dimens.dart';
import 'package:cadetbank/core/res/values/strings.dart';
import 'package:flutter/material.dart';

class InitialScreen extends StatelessWidget {
  const InitialScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
    body: SafeArea(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: Dimens.s50),
          child: Image.asset(Assets.initLogo),
        )
      ),
    ),
    bottomNavigationBar: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).pushNamed(Routes.registration);
          },
          child: const Text(Strings.startAnAccount),
        ),

        const SizedBox(height: Dimens.s10),

        ElevatedButton(
          onPressed: () {
            Navigator.of(context).pushNamed(Routes.login);
          },
          child: const Text(Strings.login),
        ),

        const SizedBox(height: Dimens.s20),
      ],
    ),
  );
}
