import 'package:flutter/material.dart';
import 'package:muhammad_zubair_s_application4/core/app_export.dart';

class CustomIconButton extends StatelessWidget {
  CustomIconButton({
    Key? key,
    this.alignment,
    this.height,
    this.width,
    this.padding,
    this.decoration,
    this.child,
    this.onTap,
  }) : super(
          key: key,
        );

  final Alignment? alignment;

  final double? height;

  final double? width;

  final EdgeInsetsGeometry? padding;

  final BoxDecoration? decoration;

  final Widget? child;

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: iconButtonWidget,
          )
        : iconButtonWidget;
  }

  Widget get iconButtonWidget => SizedBox(
        height: height ?? 0,
        width: width ?? 0,
        child: IconButton(
          padding: EdgeInsets.zero,
          icon: Container(
            height: height ?? 0,
            width: width ?? 0,
            padding: padding ?? EdgeInsets.zero,
            decoration: decoration ??
                BoxDecoration(
                  borderRadius: BorderRadius.circular(24.h),
                 gradient: LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color.fromARGB(255, 163, 226, 15).withOpacity(0.8),  // Start with yellow at the top
      Color.fromARGB(255, 43, 112, 45),   // Transition to green at the bottom
    ],
     stops: [0.2, 1.0],
  ),
                ),
            child: child,
          ),
          onPressed: onTap,
        ),
      );
}

/// Extension on [CustomIconButton] to facilitate inclusion of all types of border style etc
extension IconButtonStyleHelper on CustomIconButton {
  static BoxDecoration get outlineGray => BoxDecoration(
        borderRadius: BorderRadius.circular(10.h),
        border: Border.all(
          color: appTheme.gray30007,
          width: 1.h,
        ),
      );
  static BoxDecoration get gradientGreenToPrimary => BoxDecoration(
        borderRadius: BorderRadius.circular(12.h),
        border: Border.all(
          color: appTheme.yellow100,
          width: 1.h,
        ),
     gradient: LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color.fromARGB(255, 163, 226, 15).withOpacity(0.8),  // Start with yellow at the top
      Color.fromARGB(255, 43, 112, 45),   // Transition to green at the bottom
    ],
     stops: [0.2, 1.0],
  ),
      );
  static BoxDecoration get gradientGreenToPrimaryTL18 => BoxDecoration(
        borderRadius: BorderRadius.circular(18.h),
        gradient: LinearGradient(
          begin: Alignment(1.03, 1),
          end: Alignment(0.07, 0),
          colors: [
            appTheme.green70002,
            theme.colorScheme.primary,
          ],
        ),
      );
  static BoxDecoration get gradientGreenToPrimaryTL241 => BoxDecoration(
        borderRadius: BorderRadius.circular(24.h),
        gradient: LinearGradient(
          begin: Alignment(-0.18, 0),
          end: Alignment(1.23, 1),
          colors: [
            appTheme.green70002,
            theme.colorScheme.primary,
          ],
        ),
      );
  static BoxDecoration get fillBlack => BoxDecoration(
        color: appTheme.black900.withOpacity(0.5),
        borderRadius: BorderRadius.circular(20.h),
      );
  static BoxDecoration get fillBlue => BoxDecoration(
        color: appTheme.blue50,
        borderRadius: BorderRadius.circular(20.h),
      );
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray90002,
        borderRadius: BorderRadius.circular(20.h),
      );
  static BoxDecoration get fillLightGreen => BoxDecoration(
        color: appTheme.lightGreen10002,
        borderRadius: BorderRadius.circular(18.h),
      );
  static BoxDecoration get gradientGreenToPrimaryTL10 => BoxDecoration(
        borderRadius: BorderRadius.circular(10.h),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color.fromARGB(255, 163, 226, 15).withOpacity(0.8),  // Start with yellow at the top
      Color.fromARGB(255, 43, 112, 45),   // Transition to green at the bottom
    ],
     stops: [0.2, 1.0],
        ),
      );
  static BoxDecoration get fillGrayTL12 => BoxDecoration(
        color: appTheme.gray70004,
        borderRadius: BorderRadius.circular(12.h),
      );
  static BoxDecoration get outlineWhiteA => BoxDecoration(
        color: appTheme.gray800,
        borderRadius: BorderRadius.circular(18.h),
        border: Border.all(
          color: appTheme.whiteA700,
          width: 1.h,
        ),
      );
  static BoxDecoration get fillGrayTL121 => BoxDecoration(
        color: appTheme.gray80002,
        borderRadius: BorderRadius.circular(12.h),
      );
  static BoxDecoration get gradientGreenToPrimaryTL6 => BoxDecoration(
        borderRadius: BorderRadius.circular(6.h),
        gradient: LinearGradient(
          begin: Alignment(1.03, 1),
          end: Alignment(0.07, 0),
          colors: [
            appTheme.green70002,
            theme.colorScheme.primary,
          ],
        ),
      );
  static BoxDecoration get fillLime => BoxDecoration(
        color: appTheme.lime10014,
        borderRadius: BorderRadius.circular(10.h),
      );
  static BoxDecoration get fillTeal => BoxDecoration(
        color: appTheme.teal700,
        borderRadius: BorderRadius.circular(20.h),
      );
  static BoxDecoration get fillBlueGray => BoxDecoration(
        color: appTheme.blueGray5003,
        borderRadius: BorderRadius.circular(11.h),
      );
  static BoxDecoration get fillLime1 => BoxDecoration(
        color: appTheme.lime10016,
      );
  static BoxDecoration get fillGreen => BoxDecoration(
        color: appTheme.green70002,
      );
  static BoxDecoration get outlineLime => BoxDecoration(
        color: appTheme.lime5002,
        border: Border.all(
          color: appTheme.lime5002,
          width: 1.h,
        ),
      );
}
