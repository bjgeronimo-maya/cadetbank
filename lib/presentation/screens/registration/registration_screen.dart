import 'package:cadetbank/core/res/values/app_colors.dart';
import 'package:cadetbank/core/res/values/dimens.dart';
import 'package:cadetbank/core/res/values/strings.dart';
import 'package:cadetbank/presentation/screens/registration/widgets/registration_form.dart';
import 'package:flutter/material.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
    backgroundColor: AppColors.whiteFFFFFF,
    body: SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: Dimens.s24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: Dimens.s8),
            IconButton(
              padding: EdgeInsets.zero,
              alignment: Alignment.centerLeft,
              icon: const Icon(Icons.arrow_back, color: AppColors.black000000),
              onPressed: () => Navigator.of(context).pop(),
            ),
            const SizedBox(height: Dimens.s12),
            Text(
              Strings.createAnAccount,
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                fontWeight: FontWeight.bold,
                fontSize: 32,
              ),
            ),
            const SizedBox(height: Dimens.s32),
            const RegistrationForm(),
            const SizedBox(height: Dimens.s40),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.green00A651,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(Dimens.s16),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: Dimens.s16),
                ),
                child: const Text(
                  Strings.submit,
                  style: TextStyle(
                    color: AppColors.whiteFFFFFF,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(height: Dimens.s24),
          ],
        ),
      ),
    ),
  );
}
