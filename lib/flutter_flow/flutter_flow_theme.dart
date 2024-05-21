// ignore_for_file: overridden_fields, annotate_overrides

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:shared_preferences/shared_preferences.dart';

const kThemeModeKey = '__theme_mode__';
SharedPreferences? _prefs;

enum DeviceSize {
  mobile,
  tablet,
  desktop,
}

abstract class FlutterFlowTheme {
  static DeviceSize deviceSize = DeviceSize.mobile;

  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static ThemeMode get themeMode {
    final darkMode = _prefs?.getBool(kThemeModeKey);
    return darkMode == null
        ? ThemeMode.system
        : darkMode
            ? ThemeMode.dark
            : ThemeMode.light;
  }

  static void saveThemeMode(ThemeMode mode) => mode == ThemeMode.system
      ? _prefs?.remove(kThemeModeKey)
      : _prefs?.setBool(kThemeModeKey, mode == ThemeMode.dark);

  static FlutterFlowTheme of(BuildContext context) {
    deviceSize = getDeviceSize(context);
    return Theme.of(context).brightness == Brightness.dark
        ? DarkModeTheme()
        : LightModeTheme();
  }

  @Deprecated('Use primary instead')
  Color get primaryColor => primary;
  @Deprecated('Use secondary instead')
  Color get secondaryColor => secondary;
  @Deprecated('Use tertiary instead')
  Color get tertiaryColor => tertiary;

  late Color primary;
  late Color secondary;
  late Color tertiary;
  late Color alternate;
  late Color primaryText;
  late Color secondaryText;
  late Color primaryBackground;
  late Color secondaryBackground;
  late Color accent1;
  late Color accent2;
  late Color accent3;
  late Color accent4;
  late Color success;
  late Color warning;
  late Color error;
  late Color info;

  late Color button1;
  late Color button2;
  late Color button3;
  late Color mainFon;
  late Color iconColorOnFon;
  late Color yellowTriggers;
  late Color grayAppbar;
  late Color fonTravel;
  late Color errorContainer;
  late Color tertiaryFixedDim;
  late Color surface;
  late Color onSurfaceText;
  late Color secondaryFixed;
  late Color surface2;
  late Color surfaceBright;
  late Color button4;
  late Color thirdTextColor;
  late Color fon3MiddleGray;

  @Deprecated('Use displaySmallFamily instead')
  String get title1Family => displaySmallFamily;
  @Deprecated('Use displaySmall instead')
  TextStyle get title1 => typography.displaySmall;
  @Deprecated('Use headlineMediumFamily instead')
  String get title2Family => typography.headlineMediumFamily;
  @Deprecated('Use headlineMedium instead')
  TextStyle get title2 => typography.headlineMedium;
  @Deprecated('Use headlineSmallFamily instead')
  String get title3Family => typography.headlineSmallFamily;
  @Deprecated('Use headlineSmall instead')
  TextStyle get title3 => typography.headlineSmall;
  @Deprecated('Use titleMediumFamily instead')
  String get subtitle1Family => typography.titleMediumFamily;
  @Deprecated('Use titleMedium instead')
  TextStyle get subtitle1 => typography.titleMedium;
  @Deprecated('Use titleSmallFamily instead')
  String get subtitle2Family => typography.titleSmallFamily;
  @Deprecated('Use titleSmall instead')
  TextStyle get subtitle2 => typography.titleSmall;
  @Deprecated('Use bodyMediumFamily instead')
  String get bodyText1Family => typography.bodyMediumFamily;
  @Deprecated('Use bodyMedium instead')
  TextStyle get bodyText1 => typography.bodyMedium;
  @Deprecated('Use bodySmallFamily instead')
  String get bodyText2Family => typography.bodySmallFamily;
  @Deprecated('Use bodySmall instead')
  TextStyle get bodyText2 => typography.bodySmall;

  String get displayLargeFamily => typography.displayLargeFamily;
  TextStyle get displayLarge => typography.displayLarge;
  String get displayMediumFamily => typography.displayMediumFamily;
  TextStyle get displayMedium => typography.displayMedium;
  String get displaySmallFamily => typography.displaySmallFamily;
  TextStyle get displaySmall => typography.displaySmall;
  String get headlineLargeFamily => typography.headlineLargeFamily;
  TextStyle get headlineLarge => typography.headlineLarge;
  String get headlineMediumFamily => typography.headlineMediumFamily;
  TextStyle get headlineMedium => typography.headlineMedium;
  String get headlineSmallFamily => typography.headlineSmallFamily;
  TextStyle get headlineSmall => typography.headlineSmall;
  String get titleLargeFamily => typography.titleLargeFamily;
  TextStyle get titleLarge => typography.titleLarge;
  String get titleMediumFamily => typography.titleMediumFamily;
  TextStyle get titleMedium => typography.titleMedium;
  String get titleSmallFamily => typography.titleSmallFamily;
  TextStyle get titleSmall => typography.titleSmall;
  String get labelLargeFamily => typography.labelLargeFamily;
  TextStyle get labelLarge => typography.labelLarge;
  String get labelMediumFamily => typography.labelMediumFamily;
  TextStyle get labelMedium => typography.labelMedium;
  String get labelSmallFamily => typography.labelSmallFamily;
  TextStyle get labelSmall => typography.labelSmall;
  String get bodyLargeFamily => typography.bodyLargeFamily;
  TextStyle get bodyLarge => typography.bodyLarge;
  String get bodyMediumFamily => typography.bodyMediumFamily;
  TextStyle get bodyMedium => typography.bodyMedium;
  String get bodySmallFamily => typography.bodySmallFamily;
  TextStyle get bodySmall => typography.bodySmall;

  Typography get typography => {
        DeviceSize.mobile: MobileTypography(this),
        DeviceSize.tablet: TabletTypography(this),
        DeviceSize.desktop: DesktopTypography(this),
      }[deviceSize]!;
}

DeviceSize getDeviceSize(BuildContext context) {
  final width = MediaQuery.sizeOf(context).width;
  if (width < 479) {
    return DeviceSize.mobile;
  } else if (width < 991) {
    return DeviceSize.tablet;
  } else {
    return DeviceSize.desktop;
  }
}

class LightModeTheme extends FlutterFlowTheme {
  @Deprecated('Use primary instead')
  Color get primaryColor => primary;
  @Deprecated('Use secondary instead')
  Color get secondaryColor => secondary;
  @Deprecated('Use tertiary instead')
  Color get tertiaryColor => tertiary;

  late Color primary = const Color(0xFF546A83);
  late Color secondary = const Color(0xFF006874);
  late Color tertiary = const Color(0xFF18C0C1);
  late Color alternate = const Color(0xFFE0E3E7);
  late Color primaryText = const Color(0xFF000000);
  late Color secondaryText = const Color(0xFF546A83);
  late Color primaryBackground = const Color(0xFFF1F4F8);
  late Color secondaryBackground = const Color(0xFFFFFFFF);
  late Color accent1 = const Color(0xFFD4DDEC);
  late Color accent2 = const Color(0x4D39D2C0);
  late Color accent3 = const Color(0xFF0F1A37);
  late Color accent4 = const Color(0xFFD2DBEA);
  late Color success = const Color(0xFF9EEFFE);
  late Color warning = const Color(0xFFF9CF58);
  late Color error = const Color(0xFFBA1A1A);
  late Color info = const Color(0xFFFFFFFF);

  late Color button1 = const Color(0xFFD4DDEC);
  late Color button2 = const Color(0xFF18C0C1);
  late Color button3 = const Color(0xFF546A83);
  late Color mainFon = const Color(0xFFF2F5FA);
  late Color iconColorOnFon = const Color(0xFFA2B3CC);
  late Color yellowTriggers = const Color(0xFFECAD00);
  late Color grayAppbar = const Color(0xFF546A83);
  late Color fonTravel = const Color(0xFFF2F5FA);
  late Color errorContainer = const Color(0xFFFFDAD6);
  late Color tertiaryFixedDim = const Color(0xFFBBC6EA);
  late Color surface = const Color(0xFFF5FAFB);
  late Color onSurfaceText = const Color(0xFF171D1E);
  late Color secondaryFixed = const Color(0xFFCDE7EC);
  late Color surface2 = const Color(0xFFEFF5F6);
  late Color surfaceBright = const Color(0xFFF5FAFB);
  late Color button4 = const Color(0xFFA2B3CC);
  late Color thirdTextColor = const Color(0xFF313033);
  late Color fon3MiddleGray = const Color(0xFFD2DBEA);
}

abstract class Typography {
  String get displayLargeFamily;
  TextStyle get displayLarge;
  String get displayMediumFamily;
  TextStyle get displayMedium;
  String get displaySmallFamily;
  TextStyle get displaySmall;
  String get headlineLargeFamily;
  TextStyle get headlineLarge;
  String get headlineMediumFamily;
  TextStyle get headlineMedium;
  String get headlineSmallFamily;
  TextStyle get headlineSmall;
  String get titleLargeFamily;
  TextStyle get titleLarge;
  String get titleMediumFamily;
  TextStyle get titleMedium;
  String get titleSmallFamily;
  TextStyle get titleSmall;
  String get labelLargeFamily;
  TextStyle get labelLarge;
  String get labelMediumFamily;
  TextStyle get labelMedium;
  String get labelSmallFamily;
  TextStyle get labelSmall;
  String get bodyLargeFamily;
  TextStyle get bodyLarge;
  String get bodyMediumFamily;
  TextStyle get bodyMedium;
  String get bodySmallFamily;
  TextStyle get bodySmall;
}

class MobileTypography extends Typography {
  MobileTypography(this.theme);

  final FlutterFlowTheme theme;

  String get displayLargeFamily => 'Jost';
  TextStyle get displayLarge => GoogleFonts.getFont(
        'Jost',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 64.0,
        fontStyle: FontStyle.normal,
      );
  String get displayMediumFamily => 'Jost';
  TextStyle get displayMedium => GoogleFonts.getFont(
        'Jost',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 44.0,
      );
  String get displaySmallFamily => 'Jost';
  TextStyle get displaySmall => GoogleFonts.getFont(
        'Jost',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 36.0,
        fontStyle: FontStyle.normal,
      );
  String get headlineLargeFamily => 'Jost';
  TextStyle get headlineLarge => GoogleFonts.getFont(
        'Jost',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 32.0,
      );
  String get headlineMediumFamily => 'Jost';
  TextStyle get headlineMedium => GoogleFonts.getFont(
        'Jost',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 24.0,
      );
  String get headlineSmallFamily => 'Jost';
  TextStyle get headlineSmall => GoogleFonts.getFont(
        'Jost',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 24.0,
      );
  String get titleLargeFamily => 'Jost';
  TextStyle get titleLarge => GoogleFonts.getFont(
        'Jost',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 22.0,
      );
  String get titleMediumFamily => 'Jost';
  TextStyle get titleMedium => GoogleFonts.getFont(
        'Jost',
        color: theme.info,
        fontWeight: FontWeight.normal,
        fontSize: 18.0,
      );
  String get titleSmallFamily => 'Jost';
  TextStyle get titleSmall => GoogleFonts.getFont(
        'Jost',
        color: theme.info,
        fontWeight: FontWeight.w500,
        fontSize: 16.0,
      );
  String get labelLargeFamily => 'Jost';
  TextStyle get labelLarge => GoogleFonts.getFont(
        'Jost',
        color: theme.secondaryText,
        fontWeight: FontWeight.normal,
        fontSize: 16.0,
      );
  String get labelMediumFamily => 'Jost';
  TextStyle get labelMedium => GoogleFonts.getFont(
        'Jost',
        color: theme.secondaryText,
        fontWeight: FontWeight.normal,
        fontSize: 14.0,
      );
  String get labelSmallFamily => 'Jost';
  TextStyle get labelSmall => GoogleFonts.getFont(
        'Jost',
        color: theme.secondaryText,
        fontWeight: FontWeight.normal,
        fontSize: 12.0,
      );
  String get bodyLargeFamily => 'Jost';
  TextStyle get bodyLarge => GoogleFonts.getFont(
        'Jost',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 16.0,
      );
  String get bodyMediumFamily => 'Jost';
  TextStyle get bodyMedium => GoogleFonts.getFont(
        'Jost',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 14.0,
      );
  String get bodySmallFamily => 'Jost';
  TextStyle get bodySmall => GoogleFonts.getFont(
        'Jost',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 12.0,
      );
}

class TabletTypography extends Typography {
  TabletTypography(this.theme);

  final FlutterFlowTheme theme;

  String get displayLargeFamily => 'Jost';
  TextStyle get displayLarge => GoogleFonts.getFont(
        'Jost',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 64.0,
      );
  String get displayMediumFamily => 'Jost';
  TextStyle get displayMedium => GoogleFonts.getFont(
        'Jost',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 44.0,
      );
  String get displaySmallFamily => 'Jost';
  TextStyle get displaySmall => GoogleFonts.getFont(
        'Jost',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 36.0,
      );
  String get headlineLargeFamily => 'Jost';
  TextStyle get headlineLarge => GoogleFonts.getFont(
        'Jost',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 32.0,
      );
  String get headlineMediumFamily => 'Jost';
  TextStyle get headlineMedium => GoogleFonts.getFont(
        'Jost',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 24.0,
      );
  String get headlineSmallFamily => 'Jost';
  TextStyle get headlineSmall => GoogleFonts.getFont(
        'Jost',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 24.0,
      );
  String get titleLargeFamily => 'Jost';
  TextStyle get titleLarge => GoogleFonts.getFont(
        'Jost',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 22.0,
      );
  String get titleMediumFamily => 'Jost';
  TextStyle get titleMedium => GoogleFonts.getFont(
        'Jost',
        color: theme.info,
        fontWeight: FontWeight.normal,
        fontSize: 18.0,
      );
  String get titleSmallFamily => 'Jost';
  TextStyle get titleSmall => GoogleFonts.getFont(
        'Jost',
        color: theme.info,
        fontWeight: FontWeight.w500,
        fontSize: 16.0,
      );
  String get labelLargeFamily => 'Jost';
  TextStyle get labelLarge => GoogleFonts.getFont(
        'Jost',
        color: theme.secondaryText,
        fontWeight: FontWeight.normal,
        fontSize: 16.0,
      );
  String get labelMediumFamily => 'Jost';
  TextStyle get labelMedium => GoogleFonts.getFont(
        'Jost',
        color: theme.secondaryText,
        fontWeight: FontWeight.normal,
        fontSize: 14.0,
      );
  String get labelSmallFamily => 'Jost';
  TextStyle get labelSmall => GoogleFonts.getFont(
        'Jost',
        color: theme.secondaryText,
        fontWeight: FontWeight.normal,
        fontSize: 12.0,
      );
  String get bodyLargeFamily => 'Jost';
  TextStyle get bodyLarge => GoogleFonts.getFont(
        'Jost',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 16.0,
      );
  String get bodyMediumFamily => 'Jost';
  TextStyle get bodyMedium => GoogleFonts.getFont(
        'Jost',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 14.0,
      );
  String get bodySmallFamily => 'Jost';
  TextStyle get bodySmall => GoogleFonts.getFont(
        'Jost',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 12.0,
      );
}

class DesktopTypography extends Typography {
  DesktopTypography(this.theme);

  final FlutterFlowTheme theme;

  String get displayLargeFamily => 'Jost';
  TextStyle get displayLarge => GoogleFonts.getFont(
        'Jost',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 64.0,
      );
  String get displayMediumFamily => 'Jost';
  TextStyle get displayMedium => GoogleFonts.getFont(
        'Jost',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 44.0,
      );
  String get displaySmallFamily => 'Jost';
  TextStyle get displaySmall => GoogleFonts.getFont(
        'Jost',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 36.0,
      );
  String get headlineLargeFamily => 'Jost';
  TextStyle get headlineLarge => GoogleFonts.getFont(
        'Jost',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 32.0,
      );
  String get headlineMediumFamily => 'Jost';
  TextStyle get headlineMedium => GoogleFonts.getFont(
        'Jost',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 24.0,
      );
  String get headlineSmallFamily => 'Jost';
  TextStyle get headlineSmall => GoogleFonts.getFont(
        'Jost',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 24.0,
      );
  String get titleLargeFamily => 'Jost';
  TextStyle get titleLarge => GoogleFonts.getFont(
        'Jost',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 22.0,
      );
  String get titleMediumFamily => 'Jost';
  TextStyle get titleMedium => GoogleFonts.getFont(
        'Jost',
        color: theme.info,
        fontWeight: FontWeight.normal,
        fontSize: 18.0,
      );
  String get titleSmallFamily => 'Jost';
  TextStyle get titleSmall => GoogleFonts.getFont(
        'Jost',
        color: theme.info,
        fontWeight: FontWeight.w500,
        fontSize: 16.0,
      );
  String get labelLargeFamily => 'Jost';
  TextStyle get labelLarge => GoogleFonts.getFont(
        'Jost',
        color: theme.secondaryText,
        fontWeight: FontWeight.normal,
        fontSize: 16.0,
      );
  String get labelMediumFamily => 'Jost';
  TextStyle get labelMedium => GoogleFonts.getFont(
        'Jost',
        color: theme.secondaryText,
        fontWeight: FontWeight.normal,
        fontSize: 14.0,
      );
  String get labelSmallFamily => 'Jost';
  TextStyle get labelSmall => GoogleFonts.getFont(
        'Jost',
        color: theme.secondaryText,
        fontWeight: FontWeight.normal,
        fontSize: 12.0,
      );
  String get bodyLargeFamily => 'Jost';
  TextStyle get bodyLarge => GoogleFonts.getFont(
        'Jost',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 16.0,
      );
  String get bodyMediumFamily => 'Jost';
  TextStyle get bodyMedium => GoogleFonts.getFont(
        'Jost',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 14.0,
      );
  String get bodySmallFamily => 'Jost';
  TextStyle get bodySmall => GoogleFonts.getFont(
        'Jost',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 12.0,
      );
}

class DarkModeTheme extends FlutterFlowTheme {
  @Deprecated('Use primary instead')
  Color get primaryColor => primary;
  @Deprecated('Use secondary instead')
  Color get secondaryColor => secondary;
  @Deprecated('Use tertiary instead')
  Color get tertiaryColor => tertiary;

  late Color primary = const Color(0xFF4B39EF);
  late Color secondary = const Color(0xFF39D2C0);
  late Color tertiary = const Color(0xFFEE8B60);
  late Color alternate = const Color(0xFF262D34);
  late Color primaryText = const Color(0xFFFFFFFF);
  late Color secondaryText = const Color(0xFF95A1AC);
  late Color primaryBackground = const Color(0xFF1D2428);
  late Color secondaryBackground = const Color(0xFF14181B);
  late Color accent1 = const Color(0x4C4B39EF);
  late Color accent2 = const Color(0x4D39D2C0);
  late Color accent3 = const Color(0x4DEE8B60);
  late Color accent4 = const Color(0xB2262D34);
  late Color success = const Color(0xFF249689);
  late Color warning = const Color(0xFFF9CF58);
  late Color error = const Color(0xFFFF5963);
  late Color info = const Color(0xFFFFFFFF);

  late Color button1 = const Color(0xFFA37F40);
  late Color button2 = const Color(0xFF053680);
  late Color button3 = const Color(0xFF0158E1);
  late Color mainFon = const Color(0xFF115D54);
  late Color iconColorOnFon = const Color(0xFF2FE131);
  late Color yellowTriggers = const Color(0xFFE8E40A);
  late Color grayAppbar = const Color(0xFF4A8B68);
  late Color fonTravel = const Color(0xFFCB2B7C);
  late Color errorContainer = const Color(0xFF670BF3);
  late Color tertiaryFixedDim = const Color(0xFF77A2DE);
  late Color surface = const Color(0xFF0F1136);
  late Color onSurfaceText = const Color(0xFFAEF582);
  late Color secondaryFixed = const Color(0xFF521E36);
  late Color surface2 = const Color(0xFFEB7AE1);
  late Color surfaceBright = const Color(0xFF94783F);
  late Color button4 = const Color(0xFF7F4EB5);
  late Color thirdTextColor = const Color(0xFFDEDA64);
  late Color fon3MiddleGray = const Color(0xFF92FD70);
}

extension TextStyleHelper on TextStyle {
  TextStyle override({
    String? fontFamily,
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
    double? letterSpacing,
    FontStyle? fontStyle,
    bool useGoogleFonts = true,
    TextDecoration? decoration,
    double? lineHeight,
  }) =>
      useGoogleFonts
          ? GoogleFonts.getFont(
              fontFamily!,
              color: color ?? this.color,
              fontSize: fontSize ?? this.fontSize,
              letterSpacing: letterSpacing ?? this.letterSpacing,
              fontWeight: fontWeight ?? this.fontWeight,
              fontStyle: fontStyle ?? this.fontStyle,
              decoration: decoration,
              height: lineHeight,
            )
          : copyWith(
              fontFamily: fontFamily,
              color: color,
              fontSize: fontSize,
              letterSpacing: letterSpacing,
              fontWeight: fontWeight,
              fontStyle: fontStyle,
              decoration: decoration,
              height: lineHeight,
            );
}
