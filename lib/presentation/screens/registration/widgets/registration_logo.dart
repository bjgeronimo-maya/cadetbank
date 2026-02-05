import 'package:cadetbank/core/res/values/app_colors.dart';
import 'package:cadetbank/core/res/values/assets.dart';
import 'package:cadetbank/core/res/values/dimens.dart';
import 'package:flutter/material.dart';

class RegistrationLogo extends StatelessWidget {
  const RegistrationLogo({super.key});

  @override
  Widget build(BuildContext context) => Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: Dimens.s50),
            child: Image.asset(
              Assets.loginLogo,
              height: 80,
            ),
          ),
          const SizedBox(height: Dimens.s16),
          RichText(
            text: TextSpan(
              style: Theme.of(context).textTheme.headlineSmall,
              children: const [
                TextSpan(text: 'Start an '),
                TextSpan(
                  text: 'account',
                  style: TextStyle(color: AppColors.green00A651),
                ),
              ],
            ),
          ),
        ],
      );
}
