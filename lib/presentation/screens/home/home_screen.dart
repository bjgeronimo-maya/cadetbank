import 'package:cadetbank/core/res/values/dimens.dart';
import 'package:cadetbank/core/res/values/strings.dart';
import 'package:cadetbank/presentation/screens/login/widgets/login_form.dart';
import 'package:cadetbank/presentation/screens/login/widgets/login_logo.dart';
import 'package:cadetbank/presentation/screens/home/home_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          LoginLogo(),
          Text('Welcome!'),
        ],
      ),
    ),
  );
}
