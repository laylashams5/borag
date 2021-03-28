import 'package:boragapp/helper/splash.dart';
import 'package:flutter/material.dart';

// 5c1c59
// e2801d
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // localizationsDelegates: [
      //   ApplicationLocalizations.delegate,
      //   GlobalMaterialLocalizations.delegate,
      //   GlobalWidgetsLocalizations.delegate,
      // ],
      // supportedLocales: [
      //   Locale('en', 'US'),
      //   Locale('ar', 'Eygpt'),
      // ],
      debugShowCheckedModeBanner: false,
      title: 'Borag | بُراق',
      theme: ThemeData(
        fontFamily: 'Kufi',
        accentColor: Color(0xffe2801d),
        primaryColorDark: Colors.white,
        primaryColor: Color(0xFF5c1c59),
        primaryTextTheme: TextTheme(
          caption: TextStyle(color: Colors.black),
          button: TextStyle(color: Colors.white),
        ),
      ),
      home: SplashScreen(),
    );
  }
}
