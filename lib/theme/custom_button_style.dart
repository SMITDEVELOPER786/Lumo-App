import 'dart:ui';
import 'package:muhammad_zubair_s_application4/core/app_export.dart';
import 'package:flutter/material.dart';

/// A class that offers pre-defined button styles for customizing button appearance.
class CustomButtonStyles {
  // Filled button style
  static ButtonStyle get fillBlackB => ElevatedButton.styleFrom(
        backgroundColor: appTheme.black900B2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.h),
        ),
      );
  static ButtonStyle get fillGray => ElevatedButton.styleFrom(
        backgroundColor: appTheme.gray80059,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.h),
        ),
      );
  static ButtonStyle get fillGrayB => ElevatedButton.styleFrom(
        backgroundColor: appTheme.gray900B201,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.h),
        ),
      );
  static ButtonStyle get fillGrayF => ElevatedButton.styleFrom(
        backgroundColor: appTheme.gray8007f,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.h),
        ),
      );
  static ButtonStyle get fillGrayTL10 => ElevatedButton.styleFrom(
        backgroundColor: appTheme.gray70004,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.h),
        ),
      );
  static ButtonStyle get fillGrayTL101 => ElevatedButton.styleFrom(
        backgroundColor: appTheme.gray80002,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.h),
        ),
      );
  static ButtonStyle get fillGrayTL17 => ElevatedButton.styleFrom(
        backgroundColor: appTheme.gray90006,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(17.h),
        ),
      );
  static ButtonStyle get fillGreen => ElevatedButton.styleFrom(
        backgroundColor: appTheme.green80001,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.h),
        ),
      );
  static ButtonStyle get fillLightGreen => ElevatedButton.styleFrom(
        backgroundColor: appTheme.lightGreen10003,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.h),
        ),
      );
  static ButtonStyle get fillLightGreenA => ElevatedButton.styleFrom(
        backgroundColor: appTheme.lightGreenA100,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.h),
        ),
      );
  static ButtonStyle get fillLightGreenATL18 => ElevatedButton.styleFrom(
        backgroundColor: appTheme.lightGreenA10002,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18.h),
        ),
      );
  static ButtonStyle get fillLime => ElevatedButton.styleFrom(
        backgroundColor: appTheme.lime10006,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.h),
        ),
      );
  static ButtonStyle get fillLimeTL10 => ElevatedButton.styleFrom(
        backgroundColor: appTheme.lime10003,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.h),
        ),
      );
  static ButtonStyle get fillRed => ElevatedButton.styleFrom(
        backgroundColor: appTheme.red700,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.h),
        ),
      );
  static ButtonStyle get fillWhiteA => ElevatedButton.styleFrom(
        backgroundColor: appTheme.whiteA700,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18.h),
        ),
      );

  // Gradient button style
  static BoxDecoration get gradientAmberAToAmberADecoration => BoxDecoration(
        borderRadius: BorderRadius.circular(10.h),
        gradient: LinearGradient(
          begin: Alignment(0.17, 0),
          end: Alignment(0.66, 2),
          colors: [
            appTheme.amberA40001,
            appTheme.amberA700,
          ],
        ),
      );
  static BoxDecoration get gradientAmberToOrangeDdDecoration => BoxDecoration(
        borderRadius: BorderRadius.circular(12.h),
        gradient: LinearGradient(
          begin: Alignment(-0.52, -1),
          end: Alignment(1.33, 1),
          colors: [
            appTheme.amber50001,
            appTheme.orange800Dd,
          ],
        ),
      );
  static BoxDecoration get gradientGreenToLimeADecoration => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.68, 2),
          end: Alignment(0.35, -1),
          colors: [
            appTheme.green90001,
            appTheme.limeA200,
          ],
        ),
      );
  static BoxDecoration get gradientGreenToPrimaryDecoration => BoxDecoration(
        borderRadius: BorderRadius.circular(28.h),
        gradient: LinearGradient(
          begin: Alignment(0.07, 0),
          end: Alignment(1.65, 1),
          colors: [
            appTheme.green70002,
            theme.colorScheme.primary,
          ],
        ),
      );
  static BoxDecoration get gradientGreenToPrimaryTL10Decoration =>
      BoxDecoration(
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
  static BoxDecoration get gradientGreenToPrimaryTL17Decoration =>
      BoxDecoration(
        borderRadius: BorderRadius.circular(17.h),
        gradient: LinearGradient(
          begin: Alignment(1.03, 1),
          end: Alignment(0.07, 0),
          colors: [
            appTheme.green70002,
            theme.colorScheme.primary,
          ],
        ),
      );
  static BoxDecoration get gradientGreenToPrimaryTL24Decoration =>
      BoxDecoration(
        borderRadius: BorderRadius.circular(24.h),
        boxShadow: [
          BoxShadow(
            color: appTheme.amber20033,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              30,
            ),
          ),
        ],
        gradient: LinearGradient(
          begin: Alignment(1.03, 1),
          end: Alignment(0.07, 0),
          colors: [
            appTheme.green70002,
            theme.colorScheme.primary,
          ],
        ),
      );
  static BoxDecoration get gradientGreenToPrimaryTL241Decoration =>
      BoxDecoration(
        borderRadius: BorderRadius.circular(24.h),
        gradient: LinearGradient(
          begin: Alignment(1.03, 1),
          end: Alignment(0.07, 0),
          colors: [
            appTheme.green70002,
            theme.colorScheme.primary,
          ],
        ),
      );
  static BoxDecoration get gradientGreenToPrimaryTL25Decoration =>
      BoxDecoration(
  borderRadius: BorderRadius.circular(25.h),
  boxShadow: [
    BoxShadow(
      color: appTheme.amber20033,
      spreadRadius: 2.h,
      blurRadius: 2.h,
      offset: Offset(
        0,
        20,
      ),
    ),
  ],
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

  static BoxDecoration get gradientGreenToPrimaryTL251Decoration =>
      BoxDecoration(
        borderRadius: BorderRadius.circular(25.h),
        boxShadow: [
          BoxShadow(
            color: appTheme.yellow10033,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              40,
            ),
          ),
        ],
        gradient: LinearGradient(
          begin: Alignment(1.03, 1),
          end: Alignment(0.07, 0),
          colors: [
            appTheme.green70002,
            theme.colorScheme.primary,
          ],
        ),
      );
  static BoxDecoration get gradientGreenToPrimaryTL252Decoration =>
      BoxDecoration(
        borderRadius: BorderRadius.circular(25.h),
        boxShadow: [
          BoxShadow(
            color: appTheme.green40033,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              5,
            ),
          ),
        ],
        gradient: LinearGradient(
          begin: Alignment(1.03, 1),
          end: Alignment(0.07, 0),
          colors: [
            appTheme.green70002,
            theme.colorScheme.primary,
          ],
        ),
      );
  static BoxDecoration get gradientGreenToPrimaryTL253Decoration =>
      BoxDecoration(
        borderRadius: BorderRadius.circular(25.h),
        boxShadow: [
          BoxShadow(
            color: appTheme.lightGreen80033,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              10,
            ),
          ),
        ],
        gradient: LinearGradient(
          begin: Alignment(1.03, 1),
          end: Alignment(0.07, 0),
          colors: [
            appTheme.green70002,
            theme.colorScheme.primary,
          ],
        ),
      );
  static BoxDecoration get gradientGreenToPrimaryTL254Decoration =>
      BoxDecoration(
        borderRadius: BorderRadius.circular(25.h),
        boxShadow: [
          BoxShadow(
            color: appTheme.yellow70033,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              10,
            ),
          ),
        ],
        gradient: LinearGradient(
          begin: Alignment(1.03, 1),
          end: Alignment(0.07, 0),
          colors: [
            appTheme.green70002,
            theme.colorScheme.primary,
          ],
        ),
      );
  static BoxDecoration get gradientGreenToPrimaryTL255Decoration =>
      BoxDecoration(
        borderRadius: BorderRadius.circular(25.h),
        boxShadow: [
          BoxShadow(
            color: appTheme.lightBlue500.withOpacity(0.1),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              10,
            ),
          ),
        ],
        gradient: LinearGradient(
          begin: Alignment(1.03, 1),
          end: Alignment(0.07, 0),
          colors: [
            appTheme.green70002,
            theme.colorScheme.primary,
          ],
        ),
      );
  static BoxDecoration get gradientOrangeToLimeEaDecoration => BoxDecoration(
        borderRadius: BorderRadius.circular(10.h),
        gradient: LinearGradient(
          begin: Alignment(-0.19, 0),
          end: Alignment(1.86, 2),
          colors: [
            appTheme.orange900,
            appTheme.lime800Ea,
          ],
        ),
      );
  static BoxDecoration get gradientYellowToOrangeDecoration => BoxDecoration(
        borderRadius: BorderRadius.circular(10.h),
        gradient: LinearGradient(
          begin: Alignment(0.0, 0),
          end: Alignment(0.67, 1),
          colors: [
            appTheme.yellow90001,
            appTheme.orange800,
          ],
        ),
      );

  // Outline button style
  static ButtonStyle get outlineGray => OutlinedButton.styleFrom(
        backgroundColor: Colors.transparent,
        side: BorderSide(
          color: appTheme.gray300,
          width: 1,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24.h),
        ),
      );
  static ButtonStyle get outlineLightGreen => OutlinedButton.styleFrom(
        backgroundColor: Colors.transparent,
        side: BorderSide(
          color: appTheme.lightGreen5002,
          width: 1,
        ),
        shape: RoundedRectangleBorder(),
      );
  static ButtonStyle get outlineTL17 => OutlinedButton.styleFrom(
        backgroundColor: appTheme.lightGreen100,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(17.h),
        ),
      );
  static ButtonStyle get outlineTL171 => OutlinedButton.styleFrom(
        backgroundColor: appTheme.lightGreen10001,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(17.h),
        ),
      );
  static ButtonStyle get outlineTL24 => OutlinedButton.styleFrom(
        backgroundColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24.h),
        ),
      );
  // text button style
  static ButtonStyle get none => ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
        elevation: MaterialStateProperty.all<double>(0),
      );
}
