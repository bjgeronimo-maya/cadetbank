
import 'package:flutter/material.dart';

import '../../../res/dimens.dart';
import '../../../res/strings.dart';

class RegistrationButton extends StatelessWidget {
  const RegistrationButton({super.key});

  @override
  Widget build(BuildContext context) => Padding(
      padding: const EdgeInsets.symmetric(vertical: Dimens.s20),
      child: ElevatedButton(
        onPressed: () {},
        child: const Text(Strings.continueReg),
      )
  );
}
