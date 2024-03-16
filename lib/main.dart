import 'package:flutter/material.dart';
import 'pages/Home.dart';
import 'assets/classBox.dart';
import 'assets/Classes.dart';
import 'pages/ClassInfo.dart';

void main() => runApp(MaterialApp(
debugShowCheckedModeBanner: false,
routes: {
  '/': (context) => Home(),
},
onGenerateRoute: (settings) {
  if (settings.name == '/classInfo') {
    final args = settings.arguments as Class;
    return MaterialPageRoute(
      builder: (context) {
        return ClassInfo(data: args);
      },
    );
  }
  return null;
},

));

