
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../app/styles/app_colors.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String? hintText;
  final String? labelText;
  final int? maxLength;
  final TextInputType inputType;
  final bool isEnabled;
  final bool autoFocus;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final bool readOnly;
  final List<TextInputFormatter>? inputFormatters;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;
  final FocusNode? focusNode;
  final int? maxlines;
  final Color filledColor;
  final Color borderColor;
  final Color errorBorderColor;
  final Function(String)? onSubmit;
  final double? borderRadius;
  final EdgeInsets? contentPadding;
  final Color? enabledBorderColor;
  final bool? obscureText;

  const CustomTextField(
      {Key? key,
        this.controller,
        this.onChanged,
        this.inputFormatters,
        this.hintText,
        this.labelText,
        this.maxLength,
        this.maxlines,
        this.focusNode,
        this.validator,
        this.suffixIcon,
        this.inputType = TextInputType.text,
        this.isEnabled = true,
        this.readOnly = false,
        this.filledColor = AppColors.grey100,
        this.prefixIcon,
        this.borderColor = AppColors.textFieldBackgroundColor,
        this.autoFocus = false,
        this.onSubmit,
        this.borderRadius,
        this.contentPadding,
        this.enabledBorderColor,
        this.errorBorderColor = AppColors.error600,
        this.obscureText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: autoFocus,
      obscureText: obscureText ?? false,
      readOnly: readOnly,
      focusNode: focusNode,
      controller: controller,
      maxLength: maxLength,
      maxLines: maxlines,
      inputFormatters: inputFormatters,
      keyboardType: inputType,
      enabled: isEnabled,
      validator: validator,
      onChanged: onChanged,
      onFieldSubmitted: onSubmit,
      decoration: InputDecoration(
        contentPadding: contentPadding,
        errorText: null,
        errorStyle: const TextStyle(
            fontSize: 14, color: Colors.red, fontWeight: FontWeight.w400),
        labelText: labelText,
        alignLabelWithHint: true,
        labelStyle: const TextStyle(
          fontSize: 16.0,
          color: Colors.blue,
          fontWeight: FontWeight.w400,
        ),
        isDense: false,
        hintStyle: const TextStyle(
            fontSize: 16.0,
            color: AppColors.grey600,
            fontWeight: FontWeight.w400),
        counterText: '',
        fillColor: filledColor,
        filled: true,
        hintText: hintText,
        enabled: isEnabled,
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.red),
          borderRadius: BorderRadius.circular(borderRadius ?? 8.0),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: borderColor),
          borderRadius: BorderRadius.circular(borderRadius ?? 8.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
              color: enabledBorderColor ?? AppColors.grey300, width: 0.5),
          borderRadius: BorderRadius.circular(borderRadius ?? 8.0),
        ),
        disabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: borderColor,
          ),
          borderRadius: BorderRadius.circular(borderRadius ?? 8.0),
        ),
      ),
    );
  }
}
