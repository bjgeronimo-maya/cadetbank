import 'package:cadetbank/core/res/values/assets.dart';
import 'package:cadetbank/core/res/values/dimens.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';


class ZiggyLoader extends StatelessWidget {
  const ZiggyLoader({
    this.color = Colors.white,
    this.strokeWidth = Dimens.s6,
    super.key,
  });

  final Color color;
  final double strokeWidth;

  @override
  Widget build(BuildContext context) {
    return Lottie.asset(
      Assets.ziggyLoader,
      height: Dimens.s16,
    );
  }
}
