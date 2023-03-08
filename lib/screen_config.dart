import 'package:flutter/material.dart';

late MediaQueryData mediaQueryData;

///The width of the screen
///Usage example:
///width:ScreenConfig.screenWidth*0.5
late double screenWidth;

///The height of the screen
///Usage example:
///width:ScreenConfig.screenHeight*0.5
late double screenHeight;

///A part of the total screen width set according to the blockSize passed on initialization
late double blockSizeHorizontal;

///A part of the total screen height set according to the blockSize passed on initialization
late double blockSizeVertical;

///The value occupied for padding parts of the display that are partially obscured by system UI horizontally
late double safeAreaHorizontal;

///The value occupied for padding parts of the display that are partially obscured by system UI vertically
late double safeAreaVertical;

///A part of the total screen width set according to the blockSize passed on initialization to which was reduced the value occupied for padding parts of the display that are partially obscured by system UI horizontally
late double safeBlockHorizontal;

///A part of the total screen height set according to the blockSize passed on initialization to which was reduced the value occupied for padding parts of the display that are partially obscured by system UI vertically
late double safeBlockVertical;

///The parts of the display that are completely obscured by system UI, typically by the device's keyboard.
///
///When a mobile device's keyboard is visible viewInsets.bottom corresponds to the top of the keyboard.
///
///This value is independent of the [padding] and [viewPadding]. viewPadding is measured from the edges of the [MediaQuery] widget's bounds. Padding is calculated based on the viewPadding and viewInsets. The bounds of the top level MediaQuery created by [WidgetsApp] are the same as the window (often the mobile device screen) that contains the app.
///
///See also:
///
///[ui.window], which provides some additional detail about this property and how it relates to [padding] and [viewPadding].

late EdgeInsets viewInsets;

class ScreenConfig {
  static init(BuildContext context, {blockSize = 100}) {
    mediaQueryData = MediaQuery.of(context);
    viewInsets = mediaQueryData.viewInsets;
    screenWidth = mediaQueryData.size.width;
    screenHeight = mediaQueryData.size.height;
    blockSizeHorizontal = screenWidth / blockSize;
    blockSizeVertical = screenHeight / blockSize;
    safeAreaHorizontal =
        mediaQueryData.padding.left + mediaQueryData.padding.right;
    safeAreaVertical =
        mediaQueryData.padding.top + mediaQueryData.padding.bottom;
    safeBlockHorizontal = (screenWidth - safeAreaHorizontal) / blockSize;
    safeBlockVertical = (screenHeight - safeAreaVertical) / blockSize;
  }
}
