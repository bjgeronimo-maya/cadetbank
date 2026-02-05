import 'package:cadetbank/core/res/values/app_colors.dart';
import 'package:cadetbank/core/res/values/dimens.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InputField extends StatefulWidget {
  final double? width;
  final double? height;
  final String label;
  final String hint;
  final String? initialValue;
  final void Function(String data) onChanged;
  final TextInputType keyboardType;
  final List<TextInputFormatter>? inputFormatters;
  final TextCapitalization textCapitalization;
  final TextEditingController? textEditingController;
  final bool enabled;
  final int maxLines;
  final int minLines;
  final int? maxLength;
  final bool autoFocus;
  final void Function()? onEditingComplete;
  final Widget? suffixIcon;

  const InputField({
    super.key,
    this.width = double.infinity,
    this.height,
    required this.label,
    required this.hint,
    this.initialValue,
    required this.onChanged,
    this.keyboardType = TextInputType.text,
    this.inputFormatters,
    this.textCapitalization = TextCapitalization.words,
    this.textEditingController,
    this.enabled = true,
    this.maxLines = 1,
    this.minLines = 1,
    this.maxLength,
    this.autoFocus = false,
    this.onEditingComplete,
    this.suffixIcon,
  });

  @override
  State<InputField> createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  bool _obscuredText = false;

  void _passwordVisibilityClicked() {
    setState(() => _obscuredText = !_obscuredText);
  }

  @override
  void initState() {
    super.initState();

    _obscuredText = (widget.keyboardType == TextInputType.visiblePassword);
  }

  @override
  Widget build(BuildContext context) {
    final backgroundColor = (widget.enabled) ? AppColors.grayECEDEF : AppColors.grayECEDEF;

    return Stack(
      children: [
        Container(
          padding: const EdgeInsets.only(
            left: Dimens.s16,
            top: Dimens.s12,
            bottom: Dimens.s12,
          ),
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(Dimens.s16),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.label,
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: AppColors.green00A651,
                ),
              ),

              const SizedBox(height: Dimens.s4),

              TextFormField(
                controller: widget.textEditingController,
                initialValue: widget.initialValue,
                onChanged: widget.onChanged,
                onEditingComplete: widget.onEditingComplete,
                obscureText: _obscuredText,
                keyboardType: widget.keyboardType,
                enabled: widget.enabled,
                maxLines: widget.maxLines,
                minLines: widget.minLines,
                maxLength: widget.maxLength,
                autofocus: widget.autoFocus,
                textCapitalization: widget.textCapitalization,
                inputFormatters: widget.inputFormatters,
                style: Theme.of(context).textTheme.bodyMedium,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  isDense: true,
                  hintText: widget.hint,
                  hintStyle: Theme.of(context).textTheme.bodyMedium,
                  contentPadding: _contentPadding,
                ),
              ),
            ],
          ),
        ),

        if (_suffixIcon != null)
          Positioned(
            right: Dimens.s24,
            bottom: Dimens.s26,
            child: SizedBox(
              height: Dimens.s24,
              width: Dimens.s24,
              child: _suffixIcon!,
            ),
          )
      ],
    );
  }

  EdgeInsetsGeometry? get _contentPadding => (widget.keyboardType == TextInputType.visiblePassword)
      ? const EdgeInsets.only(right: Dimens.s50)
      : const EdgeInsets.only(right: Dimens.s16);

  Widget? get _suffixIcon => (widget.keyboardType == TextInputType.visiblePassword)
      ? _passwordIcon
      : widget.suffixIcon;

  Widget get _passwordIcon => IconButton(
      onPressed: () => _passwordVisibilityClicked(),
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      icon: (_obscuredText)
          ? const Icon(Icons.visibility_off_sharp, color: AppColors.black000000)
          : const Icon(Icons.visibility_sharp, color: AppColors.black000000)
  );
}
