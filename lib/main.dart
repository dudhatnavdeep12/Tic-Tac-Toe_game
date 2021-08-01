import 'package:flutter/material.dart';
import 'package:tictactoe/result.dart';
import 'package:tictactoe/screens/first.dart';
import 'package:tictactoe/screens/game.dart';
import 'package:tictactoe/screens/side.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => First(),
        '/side': (context) => Side(),
        '/game': (context) => Game(),
        '/result': (context) => Result(),
      },
    ),
  );
}
