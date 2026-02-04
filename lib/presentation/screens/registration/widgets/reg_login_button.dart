
import 'package:cadetbank/core/navigation/routes.dart';
import 'package:flutter/material.dart';

import '../../../res/dimens.dart';
import '../../../res/strings.dart';

class RegLoginButton extends StatelessWidget {
  const RegLoginButton({super.key});

  @override
  Widget build(BuildContext context) => Padding(
      padding: const EdgeInsets.symmetric(vertical: Dimens.s20),
      child: ElevatedButton(
        onPressed: () {
          Navigator.pushReplacementNamed(context, Routes.login);
        },
        child: const Text(Strings.login),
      )
  );
}
