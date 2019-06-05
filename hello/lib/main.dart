import 'package:flutter_web/material.dart';
import 'package:hello/exercises.dart';
import 'package:hello/salario.dart';
import 'package:hello/forca.dart';

void main() {
  runApp(MaterialApp( routes: {
    "/": (context) => Exercises(),
    '/forca': (context) => Forca()
  }));  
}
