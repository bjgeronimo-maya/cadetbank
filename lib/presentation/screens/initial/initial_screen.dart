
import 'package:cadetbank/core/navigation/routes.dart';
import 'package:cadetbank/core/res/values/app_colors.dart';
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
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: Dimens.s20,
          ),
          child: SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(Routes.registration);
              },
              child: Text(
                Strings.startAnAccount,
                style: Theme.of(context).textTheme.labelMedium,
              ),
            ),
          ),
        ),

        const SizedBox(height: Dimens.s10),

        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: Dimens.s20,
          ),
          child: SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(Routes.login);
              },
              style: Theme.of(context).elevatedButtonTheme.style?.copyWith(
                backgroundColor: const WidgetStatePropertyAll(AppColors.grayE1E5E8),
              ),
              child: Text(
                Strings.login,
                style: Theme.of(context).textTheme.labelMedium,
              ),
            ),
          ),
        ),

        const SizedBox(height: Dimens.s20),
      ],
    ),
  );
}
