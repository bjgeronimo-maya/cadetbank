import 'package:cadetbank/core/res/values/app_colors.dart';
import 'package:cadetbank/core/res/values/dimens.dart';
import 'package:cadetbank/core/res/values/strings.dart';
import 'package:cadetbank/presentation/widgets/input_field.dart';
import 'package:flutter/material.dart';

class RegistrationForm extends StatefulWidget {
  const RegistrationForm({super.key});

  @override
  State<RegistrationForm> createState() => _RegistrationFormState();
}

class _RegistrationFormState extends State<RegistrationForm> {
  bool _noMiddleName = false;
  late TextEditingController _middleNameController;

  @override
  void initState() {
    super.initState();
    _middleNameController = TextEditingController();
  }

  @override
  void dispose() {
    _middleNameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Column(
    children: [
      InputField(
        label: 'First Name',
        hint: 'Enter first name',
        onChanged: (_) {},
        keyboardType: TextInputType.name,
      ),
      const SizedBox(height: Dimens.s16),
      InputField(
        label: 'Middle Name',
        hint: 'Enter middle name',
        onChanged: (_) {},
        keyboardType: TextInputType.name,
        enabled: !_noMiddleName,
        textEditingController: _middleNameController,
      ),
      Row(
        children: [
          Checkbox(
            value: _noMiddleName,
            onChanged: (value) {
              setState(() {
                _noMiddleName = value ?? false;
                if (_noMiddleName) {
                  _middleNameController.clear();
                }
              });
            },
            activeColor: AppColors.green00A651,
          ),
          const Expanded(
            child: Text(
              'I have no legal middle name',
              style: TextStyle(
                fontSize: 14,
                color: AppColors.black2B3033,
              ),
            ),
          ),
        ],
      ),
      InputField(
        label: 'Last Name',
        hint: 'Enter last name',
        onChanged: (_) {},
        keyboardType: TextInputType.name,
      ),
      const SizedBox(height: Dimens.s16),
      InputField(
        label: 'Email address',
        hint: 'Enter email address',
        onChanged: (_) {},
        keyboardType: TextInputType.emailAddress,
      ),
      const SizedBox(height: Dimens.s16),
      InputField(
        label: 'Password',
        hint: 'Enter password',
        onChanged: (_) {},
        keyboardType: TextInputType.visiblePassword,
      ),
    ],
  );
}
