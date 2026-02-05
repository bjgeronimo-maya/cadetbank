// coverage:ignore-file

part of 'theme.dart';

/// elevated button theme
ElevatedButtonThemeData get _elevatedButtonTheme => ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.green2BDB8F,
        disabledBackgroundColor: AppColors.greenAAF1D2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(Dimens.s16)),
        elevation: Dimens.s0,
        padding: const EdgeInsets.all(Dimens.s16),
      ),
    );
