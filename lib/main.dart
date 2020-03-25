import 'package:flutter/material.dart';
import 'package:provider_state_manegement/screens/SettingTest.dart';
import 'screens/Home.dart';
import 'screens/About.dart';
import 'screens/Setting.dart';
import 'package:provider/provider.dart';
import 'models/UI.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<UI>(
          create: (_) => UI(),
        ),
      ],
      child: MaterialApp(
        theme: ThemeData(primarySwatch: Colors.purple),
        title: "Provider State Manegement",
        initialRoute: '/',
        routes: {
          '/': (context) => Home(),
          '/about': (context) => About(),
          '/setting': (context) => Setting(),
          '/settingTest': (context) => SettingTest(),
        },
      ),
    );
  }
}
