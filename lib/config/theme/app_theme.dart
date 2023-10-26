import 'package:flutter/material.dart';

const colorList = <Color>[
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.red,
  Colors.purple,
  Colors.deepPurple,
  Colors.orange,
  Colors.deepOrange,
  Colors.pink,
  Colors.pinkAccent,
];

class AppTheme {
  final int selectedColor;
  AppTheme({this.selectedColor = 0})
      : assert(
          selectedColor >= 0 && selectedColor < colorList.length,
          'La seleccion de color no cumple con el rango de 0 hasta${colorList.length - 1}',
        );
  ThemeData getTheme() => ThemeData(
        useMaterial3: true,
        colorSchemeSeed: colorList[selectedColor],
      );
}
