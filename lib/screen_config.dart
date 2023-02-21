import 'package:flutter/material.dart';

class ScreenConfig {
  static late MediaQueryData _mediaQueryData;

  ///The width of the screen
  ///Usage example:
  ///width:ScreenConfig.screenWidth*0.5
  static late double screenWidth;

  ///The height of the screen
  ///Usage example:
  ///width:ScreenConfig.screenHeight*0.5
  static late double screenHeight;

  ///A part of the total screen width set according to the blockSize passed on initialization
  static late double blockSizeHorizontal;

  ///A part of the total screen height set according to the blockSize passed on initialization
  static late double blockSizeVertical;

  ///The value occupied for padding parts of the display that are partially obscured by system UI horizontally
  static late double _safeAreaHorizontal;

  ///The value occupied for padding parts of the display that are partially obscured by system UI vertically
  static late double _safeAreaVertical;

  ///A part of the total screen width set according to the blockSize passed on initialization to which was reduced the value occupied for padding parts of the display that are partially obscured by system UI horizontally
  static late double safeBlockHorizontal;

  ///A part of the total screen height set according to the blockSize passed on initialization to which was reduced the value occupied for padding parts of the display that are partially obscured by system UI vertically
  static late double safeBlockVertical;

  ///The parts of the display that are completely obscured by system UI, typically by the device's keyboard.
  ///
  ///When a mobile device's keyboard is visible viewInsets.bottom corresponds to the top of the keyboard.
  ///
  ///This value is independent of the [padding] and [viewPadding]. viewPadding is measured from the edges of the [MediaQuery] widget's bounds. Padding is calculated based on the viewPadding and viewInsets. The bounds of the top level MediaQuery created by [WidgetsApp] are the same as the window (often the mobile device screen) that contains the app.
  ///
  ///See also:
  ///
  ///[ui.window], which provides some additional detail about this property and how it relates to [padding] and [viewPadding].

  static late EdgeInsets viewInsets;

  static void init(BuildContext context, {blockSize = 100}) {
    _mediaQueryData = MediaQuery.of(context);
    viewInsets = _mediaQueryData.viewInsets;
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    blockSizeHorizontal = screenWidth / blockSize;
    blockSizeVertical = screenHeight / blockSize;
    _safeAreaHorizontal =
        _mediaQueryData.padding.left + _mediaQueryData.padding.right;
    _safeAreaVertical =
        _mediaQueryData.padding.top + _mediaQueryData.padding.bottom;
    safeBlockHorizontal = (screenWidth - _safeAreaHorizontal) / blockSize;
    safeBlockVertical = (screenHeight - _safeAreaVertical) / blockSize;
  }
}
