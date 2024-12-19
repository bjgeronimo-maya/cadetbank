
import 'package:flutter/material.dart';

import '../../../res/dimens.dart';
import '../../../res/strings.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.symmetric(vertical: Dimens.s20),
    child: ElevatedButton(
      onPressed: () {
      },
      child: const Text(Strings.login),
    )
  );
}
