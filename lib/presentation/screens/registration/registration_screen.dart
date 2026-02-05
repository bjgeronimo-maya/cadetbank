
import 'package:cadetbank/core/navigation/routes.dart';
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
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: Dimens.s16, top: Dimens.s12, bottom: Dimens.s12),
            child: Align(
              alignment: Alignment.centerLeft,
              child: IconButton(
                icon: const Icon(Icons.arrow_back, color: AppColors.black2B3033),
                onPressed: () => Navigator.pop(context),
              ),
            ),
          ),
          const Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: Dimens.s24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: Dimens.s16),
                    Text(
                      'Start an',
                      style: TextStyle(
                        fontSize: 42,
                        fontWeight: FontWeight.w700,
                        color: AppColors.black2B3033,
                      ),
                    ),
                    Text(
                      'account',
                      style: TextStyle(
                        fontSize: 42,
                        fontWeight: FontWeight.w700,
                        color: AppColors.green00A651,
                      ),
                    ),
                    SizedBox(height: Dimens.s40),
                    RegistrationForm(),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: Dimens.s24, vertical: Dimens.s24),
            child: Column(
              children: [
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: Dimens.s16),
                      backgroundColor: AppColors.green00A651,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(Dimens.s24),
                      ),
                    ),
                    child: const Text(
                      Strings.kContinue,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: AppColors.whiteFFFFFF,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: Dimens.s10),
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacementNamed(context, Routes.login);
                  },
                  child: const Text(
                    'Log in to your existing account',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: AppColors.green00A651,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
