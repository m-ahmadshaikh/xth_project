import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:xth_project/app_theme.dart';
import 'package:xth_project/screens/home_page.dart';

import 'models/app_state_manager.dart';

void main() {
  runApp(
    ChangeNotifierProvider<AppStateManager>(
      create: (context) => AppStateManager(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Consumer<AppStateManager>(builder: (context, appState, child) {
      return MaterialApp(
        title: 'Flutter Demo',
        theme: AppTheme.lightTheme.copyWith(
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              onPrimary: Colors.black,
              primary: Colors.orange,
            ),
          ),
          textButtonTheme: TextButtonThemeData(
            style: TextButton.styleFrom(
              primary: Colors.orange,
            ),
          ),
        ),
        darkTheme: AppTheme.darkTheme,
        home: const MyHomePage(),
        themeMode: appState.isDarkMode ? ThemeMode.dark : ThemeMode.light,
      );
    });
  }
}
