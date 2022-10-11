import 'package:flutter/cupertino.dart';

import '../colors.dart';

class ReuseLinearGradient {
  static var yellow = LinearGradient(
    colors: [
      CColors.a,
      CColors.b,
      CColors.c,
      CColors.d,
    ],
  );

  static var black = LinearGradient(
    colors: [
      CColors.black,
      CColors.black,
    ],
  );
  static var grey = LinearGradient(
    colors: [
      CColors.e,
      CColors.f,
      CColors.g,

    ],
  );
  static var red = LinearGradient(
    colors: [
      CColors.h,
      CColors.i,
      CColors.j,

    ],
  );
}