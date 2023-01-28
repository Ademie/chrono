import 'package:flutter/material.dart';

class ChronoColors {
  static const Map<int, Color> palette = {
    1: Color(0xFF003166),
    2: Color(0xFF003895),
    3: Color(0xFF1D1C22),
    4: Color(0xFF292929),
    5: Color(0xFFF1B650),
    6: Color(0xFFDDDDDD),
  };
  static const Map<int, Color> paletteDarker = {
    1: Color(0xFF001E3D),
    2: Color(0xFF003B7A),
    3: Color(0xFF0A090B),
    4: Color(0xFF141414),
    5: Color(0xFFEEA82F),
    6: Color(0xFF999999),
  };

  static const MaterialColor primary =
      MaterialColor(_primaryPrimaryValue, <int, Color>{
    50: Color(0xFFE0E9F2),
    100: Color(0xFFB3C8DF),
    200: Color(0xFF80A4CA),
    300: Color(0xFF4D7FB5),
    400: Color(0xFF2663A5),
    500: Color(_primaryPrimaryValue),
    600: Color(0xFF00418D),
    700: Color(0xFF003882),
    800: Color(0xFF003078),
    900: Color(0xFF002167),
  });
  static const int _primaryPrimaryValue = 0xFF004895;

  static const MaterialColor primaryAccent =
      MaterialColor(_primaryAccentValue, <int, Color>{
    100: Color(0xFF96AEFF),
    200: Color(_primaryAccentValue),
    400: Color(0xFF3060FF),
    700: Color(0xFF174CFF),
  });
  static const int _primaryAccentValue = 0xFF6387FF;

  static const MaterialColor accent =
      MaterialColor(_accentPrimaryValue, <int, Color>{
    50: Color(0xFFE0F4FF),
    100: Color(0xFFB3E3FF),
    200: Color(0xFF80D1FF),
    300: Color(0xFF4DBEFF),
    400: Color(0xFF26B0FF),
    500: Color(_accentPrimaryValue),
    600: Color(0xFF009AFF),
    700: Color(0xFF0090FF),
    800: Color(0xFF0086FF),
    900: Color(0xFF0075FF),
  });
  static const int _accentPrimaryValue = 0xFF00A2FF;

  static const MaterialColor accentAccent =
      MaterialColor(_accentAccentValue, <int, Color>{
    100: Color(0xFFFFFFFF),
    200: Color(_accentAccentValue),
    400: Color(0xFFBFD9FF),
    700: Color(0xFFA6C9FF),
  });
  static const int _accentAccentValue = 0xFFF2F7FF;

  static const MaterialColor secondary =
      MaterialColor(_secondaryPrimaryValue, <int, Color>{
    50: Color(0xFFFDF8E6),
    100: Color(0xFFFBEDC2),
    200: Color(0xFFF8E199),
    300: Color(0xFFF5D470),
    400: Color(0xFFF3CB51),
    500: Color(_secondaryPrimaryValue),
    600: Color(0xFFEFBC2D),
    700: Color(0xFFEDB426),
    800: Color(0xFFEBAC1F),
    900: Color(0xFFE79F13),
  });
  static const int _secondaryPrimaryValue = 0xFFF1C232;

  static const MaterialColor secondaryAccent =
      MaterialColor(_secondaryAccentValue, <int, Color>{
    100: Color(0xFFFFFFFF),
    200: Color(_secondaryAccentValue),
    400: Color(0xFFFFE2AF),
    700: Color(0xFFFFD896),
  });
  static const int _secondaryAccentValue = 0xFFFFF4E2;

  static const MaterialColor appointment =
      MaterialColor(_appointmentPrimaryValue, <int, Color>{
    50: Color(0xFFEAF4FF),
    100: Color(0xFFCBE5FF),
    200: Color(0xFFA9D3FF),
    300: Color(0xFF87C1FF),
    400: Color(0xFF6DB4FF),
    500: Color(_appointmentPrimaryValue),
    600: Color(0xFF4C9FFF),
    700: Color(0xFF4296FF),
    800: Color(0xFF398CFF),
    900: Color(0xFF297CFF),
  });
  static const int _appointmentPrimaryValue = 0xFF53A7FF;

  static const MaterialColor appointmentAccent =
      MaterialColor(_appointmentAccentValue, <int, Color>{
    100: Color(0xFFFFFFFF),
    200: Color(_appointmentAccentValue),
    400: Color(0xFFD6E5FF),
    700: Color(0xFFBDD5FF),
  });
  static const int _appointmentAccentValue = 0xFFFFFFFF;

  static const MaterialColor finder =
      MaterialColor(_finderPrimaryValue, <int, Color>{
    50: Color(0xFFE0F3E1),
    100: Color(0xFFB3E0B4),
    200: Color(0xFF80CC82),
    300: Color(0xFF4DB74F),
    400: Color(0xFF26A72A),
    500: Color(_finderPrimaryValue),
    600: Color(0xFF009003),
    700: Color(0xFF008503),
    800: Color(0xFF007B02),
    900: Color(0xFF006A01),
  });
  static const int _finderPrimaryValue = 0xFF009804;

  static const MaterialColor finderAccent =
      MaterialColor(_finderAccentValue, <int, Color>{
    100: Color(0xFF99FF99),
    200: Color(_finderAccentValue),
    400: Color(0xFF33FF33),
    700: Color(0xFF1AFF1A),
  });
  static const int _finderAccentValue = 0xFF66FF66;

  static const MaterialColor event =
      MaterialColor(_eventPrimaryValue, <int, Color>{
    50: Color(0xFFF7E1E1),
    100: Color(0xFFECB3B3),
    200: Color(0xFFDF8181),
    300: Color(0xFFD24F4F),
    400: Color(0xFFC92929),
    500: Color(_eventPrimaryValue),
    600: Color(0xFFB90303),
    700: Color(0xFFB10202),
    800: Color(0xFFA90202),
    900: Color(0xFF9B0101),
  });
  static const int _eventPrimaryValue = 0xFFBF0303;

  static const MaterialColor eventAccent =
      MaterialColor(_eventAccentValue, <int, Color>{
    100: Color(0xFFFFC6C6),
    200: Color(_eventAccentValue),
    400: Color(0xFFFF6060),
    700: Color(0xFFFF4747),
  });
  static const int _eventAccentValue = 0xFFFF9393;

  static const Color background = Color(0x86CCD1D9);
}
