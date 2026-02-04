
import 'package:cadetbank/core/res/values/app_colors.dart';
import 'package:cadetbank/core/res/values/dimens.dart';
import 'package:flutter/material.dart';

part 'elevated_button_theme.dart';
part 'text_theme.dart';

ThemeData get appTheme => ThemeData(
  elevatedButtonTheme: _elevatedButtonTheme,
  textTheme: _textTheme,
);