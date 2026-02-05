import 'package:flutter/material.dart';
import 'package:cadetbank/core/res/values/strings.dart';

class MiddleNameToggle extends StatefulWidget {
  final bool value;
  final ValueChanged<bool>? onChanged;

  const MiddleNameToggle({
    Key? key,
    this.value = false,
    this.onChanged,
  }) : super(key: key);

  @override
  State<MiddleNameToggle> createState() => _MiddleNameToggleState();
}

class _MiddleNameToggleState extends State<MiddleNameToggle> {
  bool noMiddleName = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 25,
      child: Row(
        children: [
          Checkbox(
            value: noMiddleName,
            onChanged: (value) {
              setState(() {
                noMiddleName = value ?? false;
              });
            },
          ),
          Text(
            Strings.noLegalMiddleName,
            style: TextStyle(color: Colors.grey[600]),
          ),
        ],
      ),
    );
  }
}