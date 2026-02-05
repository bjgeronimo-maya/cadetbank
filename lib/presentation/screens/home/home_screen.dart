import 'package:cadetbank/core/res/values/dimens.dart';
import 'package:cadetbank/presentation/screens/login/widgets/login_logo.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Welcome to',
            style: TextStyle(
              fontSize: 36,
              color: Colors.grey.shade400,
              fontWeight: FontWeight.w300,
            ),
          ),

          const SizedBox(height: Dimens.s10),

          LoginLogo(),

          const SizedBox(height: Dimens.s30),

          RichText(
            text: const TextSpan(
              style: TextStyle(
                color: Colors.green,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              children: <TextSpan>[
                TextSpan(
                    text: 'Get banked.\n'
                ),
                TextSpan(
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w400
                  ),
                  text: 'with the #1 Digital Banking App',
                ),
              ],
            ),
          ),

        ],
      ),
    ),
  );
}
