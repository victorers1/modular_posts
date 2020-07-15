import 'package:flutter/material.dart';

final TextStyle kHeadline1 = TextStyle(
  fontWeight: FontWeight.bold,
  fontSize: 22,
  fontStyle: FontStyle.normal,
);

final TextStyle kBodyText1 = TextStyle(
  color: Colors.black,
  fontWeight: FontWeight.normal,
  fontSize: 18,
  fontStyle: FontStyle.normal,
);

/// Theme construction
ThemeData basicTheme() {
  TextTheme _basicTextTheme(TextTheme base) {
    return base.copyWith(
      //Extremely large text
      // Page headers
      headline1: kHeadline1,

      // Very, very large text
      // Home page welcome Text
      // headline2: ,

      // Very large text
      // Page content header
      // headline3: ,

      // Large text
      // Task card header
      // headline4: ,

      // Used for large text in dialogs (e.g., the month and year in the dialog shown by showDatePicker)
      // headline5: ,

      // Used for the primary text in app bars and dialogs (e.g., AppBar.title and AlertDialog.title)
      // headline6: ,

      // Used for the primary text in lists (e.g., ListTile.title)
      // Customer's home page tile subtitle
      // subtitle1: ,

      // For medium emphasis text that's a little smaller than subtitle1
      // ListTile Widget subtitle
      // subtitle2: ,

      // Used for emphasizing text that would otherwise be bodyText2
      // bodyText1: ,

      // The default text style for Material
      // Normal paragraph text without emphasys
      // bodyText2: ,

      // Used for text on RaisedButton and FlatButton
      // button: ,

      // Used for auxiliary text associated with images
      // caption: kSubtitle2,

      // The smallest text
      // overline: ,
    );
  }

  final ThemeData base = ThemeData.light();

  return base.copyWith(
    textTheme: _basicTextTheme(base.textTheme),
  );
}
