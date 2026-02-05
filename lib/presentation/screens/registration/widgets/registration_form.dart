import 'package:cadetbank/core/res/values/app_colors.dart';
import 'package:cadetbank/core/res/values/dimens.dart';
import 'package:cadetbank/core/res/values/strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class RegistrationForm extends StatefulWidget {
  const RegistrationForm({super.key});

  @override
  State<RegistrationForm> createState() => _RegistrationFormState();
}

class _RegistrationFormState extends State<RegistrationForm> {
  bool _noMiddleName = false;
  bool _obscurePassword = true;

  @override
  Widget build(BuildContext context) => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      _buildTextField(
        context,
        label: Strings.firstNameLabel,
        hint: Strings.firstNameHint,
        keyboardType: TextInputType.name,
      ),
      const SizedBox(height: Dimens.s20),
      _buildTextField(
        context,
        label: Strings.middleNameLabel,
        hint: Strings.middleNameHint,
        keyboardType: TextInputType.name,
      ),
      Row(
        children: [
          Checkbox(
            value: _noMiddleName,
            onChanged: (value) {
              setState(() {
                _noMiddleName = value ?? false;
              });
            },
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(Dimens.s4),
            ),
          ),
          Text(
            Strings.noMiddleName,
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
              color: AppColors.gray555659,
            ),
          ),
        ],
      ),
      const SizedBox(height: Dimens.s10),
      _buildTextField(
        context,
        label: Strings.lastNameLabel,
        hint: Strings.lastNameHint,
        keyboardType: TextInputType.name,
      ),
      const Divider(height: Dimens.s40, color: AppColors.grayECEDEF),
      _buildTextField(
        context,
        label: Strings.emailLabel,
        hint: Strings.emailHint,
        keyboardType: TextInputType.emailAddress,
        helperText: Strings.emailNote,
      ),
      const Divider(height: Dimens.s40, color: AppColors.grayECEDEF),
      _buildMobileNumberField(context),
      const SizedBox(height: Dimens.s20),
      _buildTextField(
        context,
        label: Strings.password,
        hint: Strings.passwordHint,
        keyboardType: TextInputType.visiblePassword,
        obscureText: _obscurePassword,
        suffixIcon: IconButton(
          onPressed: () {
            setState(() {
              _obscurePassword = !_obscurePassword;
            });
          },
          icon: Icon(
            _obscurePassword ? Icons.remove_red_eye_outlined : Icons.visibility_off_outlined,
            color: AppColors.black000000,
          ),
          padding: EdgeInsets.zero,
          constraints: const BoxConstraints(),
        ),
      ),
    ],
  );

  Widget _buildTextField(
    BuildContext context, {
    required String label,
    required String hint,
    TextInputType? keyboardType,
    String? errorText,
    String? helperText,
    bool obscureText = false,
    Widget? suffixIcon,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: Theme.of(context).textTheme.bodySmall?.copyWith(
            color: AppColors.gray555659,
          ),
        ),
        const SizedBox(height: Dimens.s4),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: TextField(
                obscureText: obscureText,
                keyboardType: keyboardType,
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.w500,
                ),
                decoration: InputDecoration(
                  hintText: hint,
                  hintStyle: Theme.of(context).textTheme.titleLarge?.copyWith(
                    color: AppColors.grayB1B3B5,
                    fontWeight: FontWeight.w500,
                  ),
                  errorText: errorText,
                  errorStyle: const TextStyle(color: AppColors.redFC737A),
                  helperText: helperText,
                  helperStyle: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: AppColors.gray808080,
                  ),
                  border: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  contentPadding: EdgeInsets.zero,
                  isDense: true,
                ),
              ),
            ),
            if (suffixIcon != null)
              Transform.translate(
                offset: const Offset(0, -8),
                child: suffixIcon,
              ),
          ],
        ),
      ],
    );
  }

  Widget _buildMobileNumberField(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          Strings.mobileNumberLabel,
          style: Theme.of(context).textTheme.bodySmall?.copyWith(
            color: AppColors.gray555659,
          ),
        ),
        const SizedBox(height: Dimens.s8),
        Row(
          children: [
            // Simplified flag and country code
            Image.network(
              'https://flagcdn.com/w40/ph.png',
              width: Dimens.s24,
              height: Dimens.s16,
              fit: BoxFit.cover,
            ),
            const SizedBox(width: Dimens.s8),
            Text(
              '+63',
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(width: Dimens.s12),
            Expanded(
              child: TextField(
                keyboardType: TextInputType.phone,
                inputFormatters: [
                  LengthLimitingTextInputFormatter(10),
                  FilteringTextInputFormatter.digitsOnly,
                ],
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.w500,
                ),
                decoration: InputDecoration(
                  hintText: Strings.mobileNumberHint,
                  hintStyle: Theme.of(context).textTheme.titleLarge?.copyWith(
                    color: AppColors.grayB1B3B5,
                    fontWeight: FontWeight.w500,
                  ),
                  border: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  contentPadding: EdgeInsets.zero,
                  isDense: true,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
