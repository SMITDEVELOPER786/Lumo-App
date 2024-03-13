import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:muhammad_zubair_s_application4/core/app_export.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

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
        
        
         validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter all fields.';
          }
          return null;
        },
        appContext: context,
        controller: controller,
        length: 4,
        keyboardType: TextInputType.number,
        textStyle:
            textStyle ?? CustomTextStyles.headlineMediumSFProDisplayWhiteA700,
        hintStyle:
            hintStyle ?? CustomTextStyles.headlineMediumSFProDisplayWhiteA700,
        inputFormatters: [
          FilteringTextInputFormatter.digitsOnly,
        ],
        enableActiveFill: true,
        pinTheme: PinTheme(
          fieldHeight: 48.h,
          fieldWidth: 51.h,
          shape: PinCodeFieldShape.box,
          inactiveFillColor: appTheme.lime300,
          activeFillColor: appTheme.lime300,
          inactiveColor: Colors.transparent,
          activeColor: Colors.transparent,
          selectedColor: Colors.transparent,
        ),
        onChanged: (value) => onChanged(value),
       
      );
}
