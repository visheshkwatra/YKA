import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:yka_app/core/app_export.dart';

class CustomPinCodeTextField extends StatelessWidget {
  CustomPinCodeTextField({
    Key? key,
    required this.context,
    required this.onChanged,
    this.alignment,
    this.controller,
    this.textStyle,
    this.hintStyle,
    this.validator,
  }) : super(
          key: key,
        );

  final Alignment? alignment;

  final BuildContext context;

  final TextEditingController? controller;

  final TextStyle? textStyle;

  final TextStyle? hintStyle;

  Function(String) onChanged;

  final FormFieldValidator<String>? validator;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: pinCodeTextFieldWidget,
          )
        : pinCodeTextFieldWidget;
  }

  Widget get pinCodeTextFieldWidget => PinCodeTextField(
        appContext: context,
        controller: controller,
        length: 9,
        keyboardType: TextInputType.number,
        textStyle: textStyle ?? CustomTextStyles.titleMediumRubikMedium,
        hintStyle: hintStyle ?? CustomTextStyles.titleMediumRubikMedium,
        inputFormatters: [
          FilteringTextInputFormatter.digitsOnly,
        ],
        pinTheme: PinTheme(
          fieldHeight: 52.h,
          fieldWidth: 67.h,
          shape: PinCodeFieldShape.box,
          borderRadius: BorderRadius.circular(24.h),
          selectedColor: appTheme.blueGray10001,
          selectedFillColor: appTheme.gray5001,
          inactiveColor: Colors.transparent,
          activeColor: Colors.transparent,
        ),
        onChanged: (value) => onChanged(value),
        validator: validator,
      );
}
