import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLarge18 => theme.textTheme.bodyLarge!.copyWith(
        fontSize: 18.fSize,
      );
  static get bodyMediumArialBluegray5002 =>
      theme.textTheme.bodyMedium!.arial.copyWith(
        color: appTheme.blueGray5002,
        fontSize: 14.fSize,
      );
  static get bodyMediumBluegray5002 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray5002,
        fontSize: 14.fSize,
      );
  static get bodyMediumBluegray600 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray600,
      );
  static get bodyMediumGray40004 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray40004,
      );
  static get bodyMediumGray70008 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray70008,
      );
  static get bodyMediumGray80003 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray80003,
      );
  static get bodyMediumGreen70002 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.green70002,
        fontSize: 14.fSize,
      );
  static get bodyMediumOnPrimary => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get bodyMediumRedA100 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.redA100,
        fontSize: 14.fSize,
      );
  static get bodyMediumWhiteA700 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.whiteA700,
      );
  static get bodyMediumff486484 => theme.textTheme.bodyMedium!.copyWith(
        color: Color(0XFF486484),
      );
  static get bodySmallArialBluegray5002 =>
      theme.textTheme.bodySmall!.arial.copyWith(
        color: appTheme.blueGray5002,
        fontSize: 12.fSize,
      );
  static get bodySmallInterBluegray5002 =>
      theme.textTheme.bodySmall!.inter.copyWith(
        color: appTheme.blueGray5002,
        fontSize: 12.fSize,
      );
  static get bodySmallInterBluegray700 =>
      theme.textTheme.bodySmall!.inter.copyWith(
        color: appTheme.blueGray700,
      );
  static get bodySmallInterGray30002 =>
      theme.textTheme.bodySmall!.inter.copyWith(
        color: appTheme.gray30002,
        fontSize: 10.fSize,
      );
  static get bodySmallInterGray40004 =>
      theme.textTheme.bodySmall!.inter.copyWith(
        color: appTheme.gray40004,
        fontSize: 12.fSize,
      );
  static get bodySmallInterGray50003 =>
      theme.textTheme.bodySmall!.inter.copyWith(
        color: appTheme.gray50003,
      );
  static get bodySmallInterGray600 => theme.textTheme.bodySmall!.inter.copyWith(
        color: appTheme.gray600,
      );
  static get bodySmallInterGray60007 =>
      theme.textTheme.bodySmall!.inter.copyWith(
        color: appTheme.gray60007,
        fontSize: 10.fSize,
      );
  static get bodySmallInterGray60008 =>
      theme.textTheme.bodySmall!.inter.copyWith(
        color: appTheme.gray60008,
        fontSize: 12.fSize,
      );
  static get bodySmallInterGray60011 =>
      theme.textTheme.bodySmall!.inter.copyWith(
        color: appTheme.gray60011,
        fontSize: 10.fSize,
      );
  static get bodySmallInterGray70007 =>
      theme.textTheme.bodySmall!.inter.copyWith(
        color: appTheme.gray70007,
        fontSize: 10.fSize,
      );
  static get bodySmallInterGray7000710 =>
      theme.textTheme.bodySmall!.inter.copyWith(
        color: appTheme.gray70007,
        fontSize: 10.fSize,
      );
  static get bodySmallInterGray80001 =>
      theme.textTheme.bodySmall!.inter.copyWith(
        color: appTheme.gray80001,
        fontSize: 12.fSize,
      );
  static get bodySmallInterGray80003 =>
      theme.textTheme.bodySmall!.inter.copyWith(
        color: appTheme.gray80003,
        fontSize: 8.fSize,
      );
  static get bodySmallInterGreen200 =>
      theme.textTheme.bodySmall!.inter.copyWith(
        color: appTheme.green200,
        fontSize: 12.fSize,
      );
  static get bodySmallInterWhiteA700 =>
      theme.textTheme.bodySmall!.inter.copyWith(
        color: appTheme.whiteA700,
      );
  static get bodySmallInterWhiteA70010 =>
      theme.textTheme.bodySmall!.inter.copyWith(
        color: appTheme.whiteA700,
        fontSize: 10.fSize,
      );
  static get bodySmallInterWhiteA70010_1 =>
      theme.textTheme.bodySmall!.inter.copyWith(
        color: appTheme.whiteA700,
        fontSize: 10.fSize,
      );
  static get bodySmallInterWhiteA70012 =>
      theme.textTheme.bodySmall!.inter.copyWith(
        color: appTheme.whiteA700,
        fontSize: 12.fSize,
      );
  static get bodySmallInterffffffff =>
      theme.textTheme.bodySmall!.inter.copyWith(
        color: Color(0XFFFFFFFF),
      );
  static get bodySmallInterffffffff10 =>
      theme.textTheme.bodySmall!.inter.copyWith(
        color: Color(0XFFFFFFFF),
        fontSize: 10.fSize,
      );
  static get bodySmallMontserratWhiteA700 =>
      theme.textTheme.bodySmall!.montserrat.copyWith(
        color: appTheme.whiteA700,
        fontSize: 10.fSize,
      );
  static get bodySmallPoppinsGray50003 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: appTheme.gray50003,
        fontSize: 12.fSize,
      );
  static get bodySmallPoppinsGreenA70001 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: appTheme.greenA70001,
      );
  static get bodySmallPoppinsLime70001 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: appTheme.lime70001,
      );
  static get bodySmallPoppinsffd1fbe2 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: Color(0XFFD1FBE2),
        fontSize: 12.fSize,
      );
  // Headline text style
  static get headlineMediumInter =>
      theme.textTheme.headlineMedium!.inter.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get headlineMediumSFProDisplayWhiteA700 =>
      theme.textTheme.headlineMedium!.sFProDisplay.copyWith(
        color: appTheme.whiteA700,
        fontSize: 29.fSize,
      );
  static get headlineSmallGray80001 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.gray80001,
        fontSize: 24.fSize,
      );
  static get headlineSmallGray80003 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.gray80003,
        fontWeight: FontWeight.w500,
      );
  static get headlineSmallGray80006 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.gray80006,
        fontSize: 24.fSize,
        fontWeight: FontWeight.w600,
      );
  // Inter text style
  static get interBluegray40001 => TextStyle(
        color: appTheme.blueGray40001,
        fontSize: 12.fSize,
        fontWeight: FontWeight.w400,
      ).inter;
  static get interGray40007 => TextStyle(
        color: appTheme.gray40007,
        fontSize: 4.fSize,
        fontWeight: FontWeight.w500,
      ).inter;
  static get interGray80003 => TextStyle(
        color: appTheme.gray80003,
        fontSize: 5.fSize,
        fontWeight: FontWeight.w500,
      ).inter;
  static get interGray80003Regular => TextStyle(
        color: appTheme.gray80003,
        fontSize: 7.fSize,
        fontWeight: FontWeight.w400,
      ).inter;
  static get interGray80005 => TextStyle(
        color: appTheme.gray80005,
        fontSize: 5.fSize,
        fontWeight: FontWeight.w400,
      ).inter;
  static get interGray80005Regular => TextStyle(
        color: appTheme.gray80005,
        fontSize: 3.fSize,
        fontWeight: FontWeight.w400,
      ).inter;
  static get interWhiteA700 => TextStyle(
        color: appTheme.whiteA700,
        fontSize: 5.fSize,
        fontWeight: FontWeight.w500,
      ).inter;
  static get interWhiteA700Bold => TextStyle(
        color: appTheme.whiteA700,
        fontSize: 7.fSize,
        fontWeight: FontWeight.w700,
      ).inter;
  static get interWhiteA700Medium => TextStyle(
        color: appTheme.whiteA700,
        fontSize: 6.fSize,
        fontWeight: FontWeight.w500,
      ).inter;
  static get interWhiteA700SemiBold => TextStyle(
        color: appTheme.whiteA700,
        fontSize: 6.fSize,
        fontWeight: FontWeight.w600,
      ).inter;
  // Label text style
  static get labelLarge13 => theme.textTheme.labelLarge!.copyWith(
        fontSize: 13.fSize,
      );
  static get labelLargeBlack900 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.black900,
        fontSize: 13.fSize,
      );
  static get labelLargeBluegray5002 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueGray5002,
        fontSize: 13.fSize,
      );
  static get labelLargeBold => theme.textTheme.labelLarge!.copyWith(
        fontSize: 13.fSize,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeBold_1 => theme.textTheme.labelLarge!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get labelLargeGray30003 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray30003,
      );
  static get labelLargeGray40004 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray40004,
        fontSize: 13.fSize,
      );
  static get labelLargeGray40005 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray40005,
        fontSize: 13.fSize,
      );
  static get labelLargeGray50002 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray50002,
        fontSize: 13.fSize,
      );
  static get labelLargeGray50005 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray50005,
      );
  static get labelLargeGray50011 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray50011,
      );
  static get labelLargeGray50012 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray50012,
      );
  static get labelLargeGray50015 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray50015,
        fontSize: 13.fSize,
      );
  static get labelLargeGray50016 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray50016,
      );
  static get labelLargeGray60001 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray60001,
        fontSize: 13.fSize,
      );
  static get labelLargeGray60008 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray60008,
      );
  static get labelLargeGray70002 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray70002,
        fontSize: 13.fSize,
      );
  static get labelLargeGray80001 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray80001,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeGray8000113 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray80001,
        fontSize: 13.fSize,
      );
  static get labelLargeGray80001SemiBold =>
      theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray80001,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeGray80001SemiBold13 =>
      theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray80001,
        fontSize: 13.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeGray80003 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray80003,
      );
  static get labelLargeGray8000313 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray80003,
        fontSize: 13.fSize,
      );
  static get labelLargeGray80003Bold => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray80003,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeGray80003SemiBold =>
      theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray80003,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeGray90005 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray90005,
      );
  static get labelLargeGreen70002 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.green70002,
        fontSize: 13.fSize,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeGreen70002SemiBold =>
      theme.textTheme.labelLarge!.copyWith(
        color: appTheme.green70002,
        fontSize: 13.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeGreenA100 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.greenA100,
        fontSize: 13.fSize,
      );
  static get labelLargeGreenA10001 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.greenA10001,
      );
  static get labelLargeGreenA100_1 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.greenA100,
      );
  static get labelLargePoppinsAmber600 =>
      theme.textTheme.labelLarge!.poppins.copyWith(
        color: appTheme.amber600,
        fontSize: 13.fSize,
      );
  static get labelLargePoppinsGreen100 =>
      theme.textTheme.labelLarge!.poppins.copyWith(
        color: appTheme.green100,
      );
  static get labelLargePrimary => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 13.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeSemiBold => theme.textTheme.labelLarge!.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get labelLargeff119645 => theme.textTheme.labelLarge!.copyWith(
        color: Color(0XFF119645),
        fontSize: 13.fSize,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeff3a3939 => theme.textTheme.labelLarge!.copyWith(
        color: Color(0XFF3A3939),
        fontSize: 13.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeffff897e => theme.textTheme.labelLarge!.copyWith(
        color: Color(0XFFFF897E),
        fontSize: 13.fSize,
        fontWeight: FontWeight.w700,
      );
  static get labelMedium11 => theme.textTheme.labelMedium!.copyWith(
        fontSize: 11.fSize,
      );
  static get labelMediumBluegray5002 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.blueGray5002,
      );
  static get labelMediumGray50001 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.gray50001,
        fontSize: 11.fSize,
      );
  static get labelMediumGray50008 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.gray50008,
        fontSize: 11.fSize,
      );
  static get labelMediumGray50014 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.gray50014,
        fontSize: 11.fSize,
      );
  static get labelMediumGray50016 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.gray50016,
        fontSize: 11.fSize,
      );
  static get labelMediumGray50016_1 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.gray50016,
      );
  static get labelMediumGray60008 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.gray60008,
        fontSize: 11.fSize,
      );
  static get labelMediumGray70009 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.gray70009,
      );
  static get labelMediumGray80001 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.gray80001,
        fontSize: 11.fSize,
      );
  static get labelMediumGray8000111 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.gray80001,
        fontSize: 11.fSize,
      );
  static get labelMediumGray80001SemiBold =>
      theme.textTheme.labelMedium!.copyWith(
        color: appTheme.gray80001,
        fontWeight: FontWeight.w600,
      );
  static get labelMediumGray80001SemiBold11 =>
      theme.textTheme.labelMedium!.copyWith(
        color: appTheme.gray80001,
        fontSize: 11.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelMediumGray80001SemiBold_1 =>
      theme.textTheme.labelMedium!.copyWith(
          color: appTheme.gray80001, fontWeight: FontWeight.w600, fontSize: 15);
  static get labelMediumGray80001SemiBold_2 =>
      theme.textTheme.labelMedium!.copyWith(
        color: appTheme.gray80001,
        fontWeight: FontWeight.w600,
      );
  static get labelMediumGray80001_1 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.gray80001,
      );

  static get labelMediumGray80003 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.gray80003,
        fontSize: 11.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelMediumGray8000311 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.gray80003,
        fontSize: 11.fSize,
      );
  static get labelMediumGray8000311_1 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.gray80003,
        fontSize: 11.fSize,
      );
  static get labelMediumGray80003_1 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.gray80003,
      );
  static get labelMediumGreen70002 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.green70002,
        fontSize: 11.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelMediumGreen70002Bold => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.green70002,
        fontSize: 11.fSize,
        fontWeight: FontWeight.w700,
      );
  static get labelMediumGreen80005 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.green80005,
        fontSize: 11.fSize,
        fontWeight: FontWeight.w700,
      );
  static get labelMediumMontserrat =>
      theme.textTheme.labelMedium!.montserrat.copyWith(
        fontSize: 11.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelMediumMontserratGray60009 =>
      theme.textTheme.labelMedium!.montserrat.copyWith(
        color: appTheme.gray60009,
        fontSize: 11.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelMediumMontserratGray80001 =>
      theme.textTheme.labelMedium!.montserrat.copyWith(
        color: appTheme.gray80001,
        fontSize: 11.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelMediumMontserratGray80003 =>
      theme.textTheme.labelMedium!.montserrat.copyWith(
        color: appTheme.gray80003,
        fontSize: 11.fSize,
      );
  static get labelMediumMontserratGreen70002 =>
      theme.textTheme.labelMedium!.montserrat.copyWith(
        color: appTheme.green70002,
        fontWeight: FontWeight.w700,
      );
  static get labelMediumRed100 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.red100,
      );
  static get labelMediumRobotoBlack900 =>
      theme.textTheme.labelMedium!.roboto.copyWith(
        color: appTheme.black900,
        fontSize: 10.fSize,
      );
  static get labelMediumSemiBold => theme.textTheme.labelMedium!.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get labelMediumSemiBold11 => theme.textTheme.labelMedium!.copyWith(
        fontSize: 11.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelMediumSemiBold_1 => theme.textTheme.labelMedium!.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get labelMediumff119645 => theme.textTheme.labelMedium!.copyWith(
        color: Color(0XFF119645),
        fontSize: 11.fSize,
        fontWeight: FontWeight.w700,
      );
  static get labelMediumff188723 => theme.textTheme.labelMedium!.copyWith(
        color: Color(0XFF188723),
        fontSize: 11.fSize,
      );
  static get labelMediumff4c4c4c => theme.textTheme.labelMedium!.copyWith(
        color: Color(0XFF4C4C4C),
      );
  static get labelMediumff4c4c4c11 => theme.textTheme.labelMedium!.copyWith(
        color: Color(0XFF4C4C4C),
        fontSize: 11.fSize,
      );
  static get labelMediumff908b8b => theme.textTheme.labelMedium!.copyWith(
        color: Color(0XFF908B8B),
      );
  static get labelMediumffa3a3a3 => theme.textTheme.labelMedium!.copyWith(
        color: Color(0XFFA3A3A3),
      );
  static get labelMediumffffb61d => theme.textTheme.labelMedium!.copyWith(
        color: Color(0XFFFFB61D),
        fontWeight: FontWeight.w600,
      );
  static get labelMediumffffffff => theme.textTheme.labelMedium!.copyWith(
        color: Color(0XFFFFFFFF),
        fontSize: 11.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelSmallGray40007 => theme.textTheme.labelSmall!.copyWith(
        color: appTheme.gray40007,
        fontWeight: FontWeight.w500,
      );
  static get labelSmallGray60003 => theme.textTheme.labelSmall!.copyWith(
        color: appTheme.gray60003,
        fontWeight: FontWeight.w500,
      );
  static get labelSmallGray80003 => theme.textTheme.labelSmall!.copyWith(
        color: appTheme.gray80003,
        fontWeight: FontWeight.w500,
      );
  static get labelSmallGray90005 => theme.textTheme.labelSmall!.copyWith(
        color: appTheme.gray90005,
        fontSize: 9.fSize,
        fontWeight: FontWeight.w500,
      );
  static get labelSmallGreen400 => theme.textTheme.labelSmall!.copyWith(
        color: appTheme.green400,
        fontSize: 9.fSize,
        fontWeight: FontWeight.w500,
      );
  static get labelSmallWhiteA700 => theme.textTheme.labelSmall!.copyWith(
        color: appTheme.whiteA700,
        fontSize: 9.fSize,
        fontWeight: FontWeight.w500,
      );
  static get labelSmallWhiteA700_1 => theme.textTheme.labelSmall!.copyWith(
        color: appTheme.whiteA700,
      );
  static get labelSmallWhiteA700_2 => theme.textTheme.labelSmall!.copyWith(
        color: appTheme.whiteA700,
      );
  static get labelSmallff4c4c4c => theme.textTheme.labelSmall!.copyWith(
        color: Color(0XFF4C4C4C),
        fontWeight: FontWeight.w500,
      );
  static get labelSmallff908b8b => theme.textTheme.labelSmall!.copyWith(
        color: Color(0XFF908B8B),
        fontSize: 9.fSize,
        fontWeight: FontWeight.w500,
      );
  static get labelSmallffb9b9b9 => theme.textTheme.labelSmall!.copyWith(
        color: Color(0XFFB9B9B9),
        fontWeight: FontWeight.w500,
      );
  // Title text style
  static get titleLargeGray80003 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.gray80003,
      );
  static get titleLargeGray90005 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.gray90005,
        fontWeight: FontWeight.w600,
      );
  static get titleLargeGray90008 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.gray90008,
      );
  static get titleLargePoppinsBluegray90001 =>
      theme.textTheme.titleLarge!.poppins.copyWith(
        color: appTheme.blueGray90001,
      );
  static get titleLargePoppinsWhiteA700 =>
      theme.textTheme.titleLarge!.poppins.copyWith(
        color: appTheme.whiteA700,
        fontSize: 23.fSize,
      );
  static get titleLargePoppinsffffffff =>
      theme.textTheme.titleLarge!.poppins.copyWith(
        color: Color(0XFFFFFFFF),
        fontSize: 23.fSize,
      );
  static get titleMediumGray40003 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray40003,
        fontSize: 17.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumGray80003 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray80003,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumGray90005 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray90005,
        fontSize: 17.fSize,
      );
  static get titleMediumWhiteA700 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.whiteA700,
        fontSize: 17.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallErrorContainer => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.errorContainer,
        fontSize: 14.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallGray40002 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray40002,
        fontSize: 14.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallGray50006 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray50006,
        fontSize: 14.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallGray5001 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray5001,
      );
  static get titleSmallGray50013 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray50013,
        fontSize: 14.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallGray700 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray700,
        fontSize: 14.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallGray70007 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray70007,
        fontSize: 14.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallGray70010 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray70010,
        fontSize: 14.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallGray80001 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray80001,
        fontSize: 14.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallGray8000114 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray80001,
        fontSize: 14.fSize,
      );
  static get titleSmallGray80001Medium => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray80001,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallGray80001SemiBold =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray80001,
        fontSize: 14.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallGray80001SemiBold_1 =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray80001,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallGray80003 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray80003,
        fontSize: 14.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallGray8000314 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray80003,
        fontSize: 14.fSize,
      );
  static get titleSmallGray80003Medium => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray80003,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallGray80003SemiBold =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray80003,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallGreen70002 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.green70002,
      );
  static get titleSmallLightgreen300 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.lightGreen300,
        fontSize: 14.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallLightgreen5004 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.lightGreen5004,
        fontSize: 14.fSize,
      );
  static get titleSmallMontserratGray90001 =>
      theme.textTheme.titleSmall!.montserrat.copyWith(
        color: appTheme.gray90001,
        fontSize: 14.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallPoppins => theme.textTheme.titleSmall!.poppins.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleSmallPoppinsGray60002 =>
      theme.textTheme.titleSmall!.poppins.copyWith(
        color: appTheme.gray60002,
        fontSize: 14.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallPoppinsGray80001 =>
      theme.textTheme.titleSmall!.poppins.copyWith(
        color: appTheme.gray80001,
        fontSize: 14.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallPoppinsGray80001Medium =>
      theme.textTheme.titleSmall!.poppins.copyWith(
        color: appTheme.gray80001,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallPoppinsGray80001SemiBold =>
      theme.textTheme.titleSmall!.poppins.copyWith(
        color: appTheme.gray80001,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallPoppinsLime500 =>
      theme.textTheme.titleSmall!.poppins.copyWith(
        color: appTheme.lime500,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallSemiBold => theme.textTheme.titleSmall!.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleSmallSemiBold14 => theme.textTheme.titleSmall!.copyWith(
        fontSize: 14.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallSourceSerifProLime5004 =>
      theme.textTheme.titleSmall!.sourceSerifPro.copyWith(
        color: appTheme.lime5004,
        fontSize: 14.fSize,
      );
  static get titleSmall_1 => theme.textTheme.titleSmall!;
}

extension on TextStyle {
  TextStyle get montserrat {
    return copyWith(
      fontFamily: 'Montserrat',
    );
  }

  TextStyle get arial {
    return copyWith(
      fontFamily: 'Arial',
    );
  }

  TextStyle get sourceSerifPro {
    return copyWith(
      fontFamily: 'Source Serif Pro',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get roboto {
    return copyWith(
      fontFamily: 'Roboto',
    );
  }

  TextStyle get sFProDisplay {
    return copyWith(
      fontFamily: 'SF Pro Display',
    );
  }

  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }

  TextStyle get arialRoundedMTBold {
    return copyWith(
      fontFamily: 'Arial Rounded MT Bold',
    );
  }
}
