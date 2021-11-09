import 'package:flutter/material.dart';
import 'screens/portrait_screen.dart';
import 'screens/landscape_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Animals",
      home: Scaffold(
        appBar: AppBar(
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(35))),
          title: const Center(
            child: Text("Animals"),
          ),
        ),
        body: OrientationBuilder(
            builder: (BuildContext context, Orientation orientation) {
          if (orientation == Orientation.portrait) {
            return PortraitScreen();
          } else {
            return LandscapeScreen();
          }
        }),
      ),
      theme: ThemeData(
          elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)))),
      )),
    );
  }
}
