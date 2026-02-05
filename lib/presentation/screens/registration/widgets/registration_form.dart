import 'package:cadetbank/core/res/values/app_colors.dart';
import 'package:cadetbank/core/res/values/dimens.dart';
import 'package:cadetbank/core/res/values/strings.dart';
import 'package:flutter/material.dart';

class RegistrationForm extends StatelessWidget {
  const RegistrationForm({super.key});

  @override
  Widget build(BuildContext context) => Column(
        children: [
          TextField(
            keyboardType: TextInputType.name,
            decoration: InputDecoration(
              hintText: Strings.nameHint,
              prefixIcon: const Icon(Icons.person_outline,
                  color: AppColors.green00A651),
              filled: true,
              fillColor: AppColors.whiteFFFFFF,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: const BorderSide(color: AppColors.greenDDF6E2),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: const BorderSide(color: AppColors.greenDDF6E2),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide:
                    const BorderSide(color: AppColors.green00A651, width: 2),
              ),
              contentPadding: const EdgeInsets.symmetric(
                  horizontal: Dimens.s16, vertical: Dimens.s14),
            ),
          ),
          const SizedBox(height: Dimens.s16),
          TextField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              hintText: Strings.emailHint,
              prefixIcon: const Icon(Icons.email_outlined,
                  color: AppColors.green00A651),
              filled: true,
              fillColor: AppColors.whiteFFFFFF,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: const BorderSide(color: AppColors.greenDDF6E2),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: const BorderSide(color: AppColors.greenDDF6E2),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide:
                    const BorderSide(color: AppColors.green00A651, width: 2),
              ),
              contentPadding: const EdgeInsets.symmetric(
                  horizontal: Dimens.s16, vertical: Dimens.s14),
            ),
          ),
          const SizedBox(height: Dimens.s16),
          TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              hintText: Strings.mobileNumberHint,
              prefixIcon: const Icon(Icons.phone_outlined,
                  color: AppColors.green00A651),
              filled: true,
              fillColor: AppColors.whiteFFFFFF,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: const BorderSide(color: AppColors.greenDDF6E2),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: const BorderSide(color: AppColors.greenDDF6E2),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide:
                    const BorderSide(color: AppColors.green00A651, width: 2),
              ),
              contentPadding: const EdgeInsets.symmetric(
                  horizontal: Dimens.s16, vertical: Dimens.s14),
            ),
          ),
          const SizedBox(height: Dimens.s16),
          TextField(
            keyboardType: TextInputType.visiblePassword,
            obscureText: true,
            decoration: InputDecoration(
              hintText: Strings.passwordHint,
              prefixIcon:
                  const Icon(Icons.lock_outline, color: AppColors.green00A651),
              suffixIcon: const Icon(Icons.visibility_off_outlined,
                  color: AppColors.grayB1B3B5),
              filled: true,
              fillColor: AppColors.whiteFFFFFF,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: const BorderSide(color: AppColors.greenDDF6E2),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: const BorderSide(color: AppColors.greenDDF6E2),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide:
                    const BorderSide(color: AppColors.green00A651, width: 2),
              ),
              contentPadding: const EdgeInsets.symmetric(
                  horizontal: Dimens.s16, vertical: Dimens.s14),
            ),
          ),
        ],
      );
}
