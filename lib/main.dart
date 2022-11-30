import 'package:flutter/material.dart';
import 'package:movie_app/ui/home.dart';

final ThemeData _appTheme = _buildAppTheme();

ThemeData _buildAppTheme(){
   final ThemeData base = ThemeData();
  return  base.copyWith(
    textTheme:  _appTextTheme(base.textTheme)
  );
}

TextTheme _appTextTheme(TextTheme base) {
  return base.copyWith(
    headline1: base.headline1!.copyWith(
      fontWeight: FontWeight.w400,
      fontFamily: "SF",
    ),
    titleMedium: base.titleMedium!.copyWith(
      fontSize: 18.0,
    ),
    bodyText1: base.bodyText1!.copyWith(
      fontSize: 16.9,
      color: Colors.white,
    )
  );
}


void main() => runApp(new MaterialApp(
      
      home: MovieListView(),
    ));