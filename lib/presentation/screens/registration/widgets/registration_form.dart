import 'package:cadetbank/core/res/values/dimens.dart';
import 'package:cadetbank/core/res/values/strings.dart';
import 'package:flutter/material.dart';

class RegistrationForm extends StatelessWidget {
  const RegistrationForm({super.key});

  @override
  Widget build(BuildContext context) => const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Name",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w800,
                  color: Colors.grey)),
          TextField(
            keyboardType: TextInputType.name,
            decoration: InputDecoration(
                hintText: Strings.nameHint, border: InputBorder.none),
          ),
          SizedBox(height: Dimens.s10),
          Text("Email Address",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w800,
                  color: Colors.grey)),
          TextField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
                hintText: Strings.emailHint, border: InputBorder.none),
          ),
          SizedBox(height: Dimens.s10),
          Text("Mobile Number",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w800,
                  color: Colors.grey)),
          TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
                hintText: Strings.mobileNumberHint, border: InputBorder.none),
          ),
          SizedBox(height: Dimens.s10),
          Text("Password",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w800,
                  color: Colors.grey)),
          TextField(
            keyboardType: TextInputType.visiblePassword,
            decoration: InputDecoration(
                hintText: Strings.passwordHint, border: InputBorder.none),
          ),
        ],
      );
}
