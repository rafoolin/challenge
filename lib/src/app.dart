import 'package:challenge/src/presentation/home_view/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en', ''),
        Locale('fa', ''),
      ],
      locale: const Locale('fa', ''),
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        // Simple version!
        textTheme: const TextTheme(
          bodyText1: TextStyle(fontFamily: 'sahel', fontSize: 16.0),
          bodyText2: TextStyle(
            fontFamily: 'sahel',
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
          subtitle1: TextStyle(fontFamily: 'sahel', fontSize: 16.0),
        ),
      ),
      home: const HomeView(),
    );
  }
}
