
import 'package:cadetbank/core/navigation/routes.dart';
import 'package:cadetbank/core/res/values/app_colors.dart';
import 'package:cadetbank/core/res/values/assets.dart';
import 'package:cadetbank/core/res/values/dimens.dart';
import 'package:cadetbank/core/res/values/strings.dart';
import 'package:cadetbank/presentation/screens/registration/steps/fullname_step.dart';
import 'package:cadetbank/presentation/screens/registration/steps/registration_details_step.dart';
import 'package:flutter/material.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({super.key});

  @override
  Widget build(BuildContext context) => FullNameStepScreen(
    onNext: (first, middle, last) {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (_) => RegistrationDetailsStepScreen(
            firstName: first,
            middleName: middle,
            lastName: last,
            onFinish: (email, mobile, password) {
              // TODO: Handle registration completion
            },
          ),
        ),
      );
    },
  );
}
