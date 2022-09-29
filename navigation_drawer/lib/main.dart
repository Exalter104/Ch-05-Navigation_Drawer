import 'package:flutter/material.dart';
import 'package:navigation_drawer/screenone.dart';

import 'package:navigation_drawer/screentwo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: ScreenOne.id,
      routes: {
        ScreenOne.id: (context) => const ScreenOne(),
        ScrrenTwo.id: (context) => const ScrrenTwo(),
      },
    );
  }
}
