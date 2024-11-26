import 'package:flutter/material.dart';
import 'package:onboarding/signin.dart';
import 'package:onboarding/signup.dart';
import 'package:onboarding/welcome.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: Welcome(),
      initialRoute: '/',
      routes: {
        '/': (context) => const Welcome(),
        '/signin': (context) => const Signin(),
        '/signup': (context) => const Signup(),
      },
    );
  }
}
