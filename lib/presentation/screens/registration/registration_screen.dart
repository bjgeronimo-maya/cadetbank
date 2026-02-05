import 'package:cadetbank/core/res/values/app_colors.dart';
import 'package:cadetbank/core/res/values/dimens.dart';
import 'package:cadetbank/presentation/screens/registration/widgets/registration_form.dart';
import 'package:flutter/material.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: AppColors.whiteFFFFFF,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: IconButton(
            icon:
                const Icon(Icons.close, color: AppColors.black2B3033, size: 28),
            onPressed: () => Navigator.pop(context),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: Dimens.s20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: Dimens.s12),
                Text(
                  "What's your name?",
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: AppColors.black2B3033,
                      fontSize: 36),
                ),
                const SizedBox(height: Dimens.s8),
                Text(
                  'Make sure your name is correct to continue enjoying our services',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: AppColors.gray808080,
                      ),
                ),
                const SizedBox(height: Dimens.s32),
                const RegistrationForm(),
                const SizedBox(height: Dimens.s40),
              ],
            ),
          ),
        ),
        bottomNavigationBar: Container(
          color: AppColors.whiteFFFFFF,
          padding: const EdgeInsets.all(Dimens.s20),
          child: SizedBox(
            width: double.infinity,
            height: 52,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.green00A651,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              onPressed: () {},
              child: Text(
                'Next',
                style: Theme.of(context).textTheme.labelLarge?.copyWith(
                      color: AppColors.whiteFFFFFF,
                      fontWeight: FontWeight.w600,
                    ),
              ),
            ),
          ),
        ),
      );
}
