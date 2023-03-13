import 'package:flutter/material.dart';

FilledButtonThemeData customfilledButtonTheme = FilledButtonThemeData(
  style: ButtonStyle(
    // elevation: MaterialStateProperty.all(5),
    backgroundColor: MaterialStateProperty.all(Colors.white),
    foregroundColor: MaterialStateProperty.all(Colors.indigoAccent[700]),
    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(50))),
    minimumSize: MaterialStateProperty.all<Size>(
      const Size(200, 60),
    ),
  ),
);
