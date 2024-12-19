
import 'package:cadetbank/res/assets.dart';
import 'package:cadetbank/res/dimens.dart';
import 'package:flutter/material.dart';

class LoginLogo extends StatelessWidget {
  const LoginLogo({super.key});

  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.symmetric(horizontal: Dimens.s50),
    child: Image.asset(Assets.loginLogo),
  );
}
