import 'package:clone_ig/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'route',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          iconTheme: IconThemeData(color: Colors.black),
          appBarTheme: AppBarTheme(elevation: 1, color: Colors.white)),
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
      },
    );
  }
}
