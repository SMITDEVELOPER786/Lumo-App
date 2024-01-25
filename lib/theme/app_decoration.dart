import 'package:flutter/material.dart';
import 'package:muhammad_zubair_s_application4/core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillAmber => BoxDecoration(
        color: appTheme.amber10001,
      );
  static BoxDecoration get fillBlack => BoxDecoration(
        color: appTheme.black900.withOpacity(0.2),
      );
  static BoxDecoration get fillBlack900 => BoxDecoration(
        color: appTheme.black900.withOpacity(0.5),
      );
  static BoxDecoration get fillBlack9001 => BoxDecoration(
        color: appTheme.black900.withOpacity(0.3),
      );
  static BoxDecoration get fillBlackB => BoxDecoration(
        color: appTheme.black900B2,
      );
  static BoxDecoration get fillBlackD => BoxDecoration(
        color: appTheme.black900D8,
      );
  static BoxDecoration get fillDeepOrange => BoxDecoration(
        color: appTheme.deepOrange600,
      );
  static BoxDecoration get fillDeepPurpleA => BoxDecoration(
        color: appTheme.deepPurpleA200,
      );
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray80059,
      );
  static BoxDecoration get fillGray40006 => BoxDecoration(
        color: appTheme.gray40006,
      );
  static BoxDecoration get fillGray70006 => BoxDecoration(
        color: appTheme.gray70006,
      );
  static BoxDecoration get fillGray8004c => BoxDecoration(
        color: appTheme.gray8004c.withOpacity(0.2),
      );
  static BoxDecoration get fillGray90004 => BoxDecoration(
        color: appTheme.gray90004,
      );
  static BoxDecoration get fillGrayB => BoxDecoration(
        color: appTheme.gray900B2,
      );
  static BoxDecoration get fillGrayC => BoxDecoration(
        color: appTheme.gray8004c,
      );
  static BoxDecoration get fillGrayF => BoxDecoration(
        color: appTheme.gray8007f,
      );
  static BoxDecoration get fillGreen => BoxDecoration(
        color: appTheme.green900,
      );
  static BoxDecoration get fillGreen50 => BoxDecoration(
        color: appTheme.green50,
      );
  static BoxDecoration get fillGreen5003 => BoxDecoration(
        color: appTheme.green5003,
      );
  static BoxDecoration get fillGreen5004 => BoxDecoration(
        color: appTheme.green5004,
      );
  static BoxDecoration get fillGreen5006 => BoxDecoration(
        color: appTheme.green5006,
      );
  static BoxDecoration get fillGreen70001 => BoxDecoration(
        color: appTheme.green70001,
      );
  static BoxDecoration get fillGreen70002 => BoxDecoration(
        color: appTheme.green70002,
      );
  static BoxDecoration get fillGreen80001 => BoxDecoration(
        color: appTheme.green80001,
      );
  static BoxDecoration get fillLightBlueA => BoxDecoration(
        color: appTheme.lightBlueA200,
      );
  static BoxDecoration get fillLightGreen => BoxDecoration(
        color: appTheme.lightGreen5004,
      );
  static BoxDecoration get fillLightgreen10005 => BoxDecoration(
        color: appTheme.lightGreen10005,
      );
  static BoxDecoration get fillLightgreen5001 => BoxDecoration(
        color: appTheme.lightGreen5001,
      );
  static BoxDecoration get fillLightgreen5002 => BoxDecoration(
        color: appTheme.lightGreen5002,
      );
  static BoxDecoration get fillLightgreen5003 => BoxDecoration(
        color: appTheme.lightGreen5003,
      );
  static BoxDecoration get fillLightgreen5005 => BoxDecoration(
        color: appTheme.lightGreen5005,
      );
  static BoxDecoration get fillLightgreen5006 => BoxDecoration(
        color: appTheme.lightGreen5006,
      );
  static BoxDecoration get fillLime => BoxDecoration(
        color: appTheme.lime5004,
      );
  static BoxDecoration get fillLime100 => BoxDecoration(
        color: appTheme.lime100,
      );
  static BoxDecoration get fillLime10002 => BoxDecoration(
        color: appTheme.lime10002,
      );
  static BoxDecoration get fillLime10003 => BoxDecoration(
        color: appTheme.lime10003,
      );
  static BoxDecoration get fillLime10004 => BoxDecoration(
        color: appTheme.lime10004,
      );
  static BoxDecoration get fillLime10006 => BoxDecoration(
        color: appTheme.lime10006,
      );
  static BoxDecoration get fillLime10007 => BoxDecoration(
        color: appTheme.lime10007,
      );
  static BoxDecoration get fillLime10009 => BoxDecoration(
        color: appTheme.lime10009,
      );
  static BoxDecoration get fillLime10010 => BoxDecoration(
        color: appTheme.lime10010,
      );
  static BoxDecoration get fillLime10011 => BoxDecoration(
        color: appTheme.lime10011,
      );
  static BoxDecoration get fillLime10013 => BoxDecoration(
        color: appTheme.lime10013,
      );
  static BoxDecoration get fillLime10015 => BoxDecoration(
        color: appTheme.lime10015,
      );
  static BoxDecoration get fillLime10017 => BoxDecoration(
        color: appTheme.lime10017,
      );
  static BoxDecoration get fillOnError => BoxDecoration(
        color: theme.colorScheme.onError,
      );
  static BoxDecoration get fillOnErrorContainer => BoxDecoration(
        color: theme.colorScheme.onErrorContainer,
      );
  static BoxDecoration get fillOnPrimaryContainer => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static BoxDecoration get fillOrange => BoxDecoration(
        color: appTheme.orange5003,
      );
  static BoxDecoration get fillOrange50 => BoxDecoration(
        color: appTheme.orange50,
      );
  static BoxDecoration get fillOrange5001 => BoxDecoration(
        color: appTheme.orange5001,
      );
  static BoxDecoration get fillOrange5002 => BoxDecoration(
        color: appTheme.orange5002,
      );
  static BoxDecoration get fillPrimaryContainer => BoxDecoration(
        color: theme.colorScheme.primaryContainer,
      );
  static BoxDecoration get fillYellow => BoxDecoration(
        color: appTheme.yellow800,
      );

  // Gradient decorations
  static BoxDecoration get gradientAmberAToAmberA => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.17, -0.66),
          end: Alignment(0.66, 2.47),
          colors: [
            appTheme.amberA40001,
            appTheme.amberA700,
          ],
        ),
      );
  static BoxDecoration get gradientGreen70002ToPrimary => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(1.03, 1.11),
          end: Alignment(0.07, -0.41),
          colors: [
            appTheme.green70002,
            theme.colorScheme.primary,
          ],
        ),
      );
  static BoxDecoration get gradientGreenAToGreen => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(1.45, 2.76),
          end: Alignment(-0.14, -0.91),
          colors: [
            appTheme.greenA400,
            appTheme.green90002,
          ],
        ),
      );
  static BoxDecoration get gradientGreenToPrimary => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(1.03, 1.11),
          end: Alignment(0.07, -0.41),
          colors: [
            appTheme.green70002,
            theme.colorScheme.primary,
          ],
        ),
      );
  static BoxDecoration get gradientLightGreenAToAmber => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.25, -0.54),
          end: Alignment(1.07, 1.24),
          colors: [
            appTheme.lightGreenA10001,
            appTheme.amber50075,
          ],
        ),
      );
  static BoxDecoration get gradientLightGreenToLightGreen => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [
            appTheme.lightGreen900,
            appTheme.lightGreen900.withOpacity(0),
          ],
        ),
      );
  static BoxDecoration get gradientLightGreenToLimeA => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(-0.05, -0.64),
          end: Alignment(0.55, 0.67),
          colors: [
            appTheme.lightGreen700,
            appTheme.limeA70075,
          ],
        ),
      );
  static BoxDecoration get gradientLimeToLime => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.54, -0.06),
          end: Alignment(0.52, 0.78),
          colors: [
            appTheme.lime900,
            appTheme.lime900.withOpacity(0),
          ],
        ),
      );
  static BoxDecoration get gradientLimeToLime700 => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 1),
          end: Alignment(0.5, 0),
          colors: [
            appTheme.lime700.withOpacity(0),
            appTheme.lime700,
          ],
        ),
      );
  static BoxDecoration get gradientOrangeToOrange => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 1),
          end: Alignment(0.5, 0),
          colors: [
            appTheme.orange80001.withOpacity(0),
            appTheme.orange80001,
          ],
        ),
      );
  static BoxDecoration get gradientOrangeToYellow => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(1.03, 1.11),
          end: Alignment(0.07, -0.41),
          colors: [
            appTheme.orange600,
            appTheme.yellow500,
          ],
        ),
      );
  static BoxDecoration get gradientPinkToTeal => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.48, 0.11),
          end: Alignment(0.46, 1.37),
          colors: [
            appTheme.pink900,
            appTheme.teal900,
          ],
        ),
      );
  static BoxDecoration get gradientPurpleToPurple => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 1),
          end: Alignment(0.5, 0),
          colors: [
            appTheme.purple400.withOpacity(0),
            appTheme.purple400,
          ],
        ),
      );
  static BoxDecoration get gradientYellowToGreenA => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(1.06, 0.64),
          end: Alignment(1.44, 2.47),
          colors: [
            appTheme.yellow900,
            appTheme.greenA70075,
          ],
        ),
      );

  // Outline decorations
  static BoxDecoration get outline => BoxDecoration(
        color: appTheme.lime10005,
      );
  static BoxDecoration get outlineGray => BoxDecoration(
        color: appTheme.lime5001,
        border: Border.all(
          color: appTheme.gray30008,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineGray30001 => BoxDecoration(
        color: appTheme.lime50,
        border: Border.all(
          color: appTheme.gray30001,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineGray300011 => BoxDecoration(
        border: Border.all(
          color: appTheme.gray30001,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineGray30005 => BoxDecoration(
        border: Border.all(
          color: appTheme.gray30005,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineGray30008 => BoxDecoration(
        border: Border.all(
          color: appTheme.gray30008,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineGray50010 => BoxDecoration();
  static BoxDecoration get outlineGreen => BoxDecoration(
        color: appTheme.lightGreen5004,
        border: Border.all(
          color: appTheme.green5001,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineGreen80006 => BoxDecoration(
        color: appTheme.lime200,
        border: Border.all(
          color: appTheme.green80006,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineIndigoF => BoxDecoration(
        color: appTheme.green80003,
        boxShadow: [
          BoxShadow(
            color: appTheme.indigo9000f,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              10,
              40,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineLightGreen => BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: appTheme.lightGreen5002,
            width: 1.h,
          ),
        ),
      );
  static BoxDecoration get outlineLightgreen5002 => BoxDecoration(
        color: appTheme.lime5003,
        border: Border(
          top: BorderSide(
            color: appTheme.lightGreen5002,
            width: 1.h,
          ),
          bottom: BorderSide(
            color: appTheme.lightGreen5002,
            width: 1.h,
          ),
        ),
      );
  static BoxDecoration get outlineLime => BoxDecoration();
  static BoxDecoration get outlineLime5002 => BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: appTheme.lime5002,
            width: 1.h,
          ),
        ),
      );
  static BoxDecoration get outlineLime70002 => BoxDecoration(
        color: appTheme.lime30003,
        border: Border.all(
          color: appTheme.lime70002,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineLime700021 => BoxDecoration(
        color: appTheme.lime30002,
        border: Border.all(
          color: appTheme.lime70002,
          width: 1.h,
        ),
      );
  static BoxDecoration get outline1 => BoxDecoration();

  // White decorations
  static BoxDecoration get white => BoxDecoration(
        color: appTheme.whiteA700,
      );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder1 => BorderRadius.circular(
        1.h,
      );
  static BorderRadius get circleBorder15 => BorderRadius.circular(
        15.h,
      );
  static BorderRadius get circleBorder40 => BorderRadius.circular(
        40.h,
      );
  static BorderRadius get circleBorder60 => BorderRadius.circular(
        60.h,
      );

  // Custom borders
  static BorderRadius get customBorderBL10 => BorderRadius.vertical(
        bottom: Radius.circular(10.h),
      );
  static BorderRadius get customBorderTL10 => BorderRadius.only(
        topLeft: Radius.circular(10.h),
        topRight: Radius.circular(10.h),
        bottomRight: Radius.circular(10.h),
      );
  static BorderRadius get customBorderTL20 => BorderRadius.vertical(
        top: Radius.circular(20.h),
      );
  static BorderRadius get customBorderTL25 => BorderRadius.vertical(
        top: Radius.circular(25.h),
      );
  static BorderRadius get customBorderTL30 => BorderRadius.vertical(
        top: Radius.circular(30.h),
      );
  static BorderRadius get customBorderTL40 => BorderRadius.vertical(
        top: Radius.circular(40.h),
      );
  static BorderRadius get customBorderTL5 => BorderRadius.vertical(
        top: Radius.circular(5.h),
      );
  static BorderRadius get customBorderTL8 => BorderRadius.vertical(
        top: Radius.circular(8.h),
      );

  // Rounded borders
  static BorderRadius get roundedBorder10 => BorderRadius.circular(
        10.h,
      );
  static BorderRadius get roundedBorder18 => BorderRadius.circular(
        18.h,
      );
  static BorderRadius get roundedBorder21 => BorderRadius.circular(
        21.h,
      );
  static BorderRadius get roundedBorder25 => BorderRadius.circular(
        25.h,
      );
  static BorderRadius get roundedBorder30 => BorderRadius.circular(
        30.h,
      );
  static BorderRadius get roundedBorder34 => BorderRadius.circular(
        34.h,
      );
  static BorderRadius get roundedBorder45 => BorderRadius.circular(
        45.h,
      );
  static BorderRadius get roundedBorder5 => BorderRadius.circular(
        5.h,
      );
}

// Comment/Uncomment the below code based on your Flutter SDK version.
    
// For Flutter SDK Version 3.7.2 or greater.
    
double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
    