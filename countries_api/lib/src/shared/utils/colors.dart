// Dark Blue (Dark Mode Elements): hsl(209, 23%, 22%)
// - Very Dark Blue (Dark Mode Background): hsl(207, 26%, 17%)
// - Very Dark Blue (Light Mode Text): hsl(200, 15%, 8%)
// - Dark Gray (Light Mode Input): hsl(0, 0%, 52%)
// - Very Light Gray (Light Mode Background): hsl(0, 0%, 98%)
// - White (Dark Mode Text & Light Mode Elements): hsl(0, 0%, 100%)

import 'package:flutter/material.dart';

class AppColors {
  //* (Dark Mode Elements)
  static var darkBlue = const HSLColor.fromAHSL(1.0, 209, 0.23, 0.22).toColor();

//* (Dark Mode Background)
  static var veryDarkBlue = const HSLColor.fromAHSL(1.0, 207, 0.26, 0.17).toColor();

//* (Light Mode Text)
  static var veryDarkBlue2 = const HSLColor.fromAHSL(1.0, 200, 0.15, 0.8).toColor();

//* (Light Mode Input)
  static var grayishBlue = const HSLColor.fromAHSL(1.0, 0, 0.0, 0.52).toColor();

//* (Light Mode Background)
  static var veryLightGrey = const HSLColor.fromAHSL(1.0, 0, 0.0, 0.98).toColor();

//* (Dark Mode Text & Light Mode Elements)
  static var white = const HSLColor.fromAHSL(1.0, 0, 0.0, 1.0).toColor();
}
