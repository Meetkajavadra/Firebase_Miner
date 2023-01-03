import 'package:flutter/material.dart';
import 'package:login_logout_firebase/screens/home_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:login_logout_firebase/screens/login_page.dart';
import 'package:login_logout_firebase/screens/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      initialRoute: 'splash_screen',
      routes: {
        'splash_screen': (context) => const SplashScreen(),
        '/': (context) => const HomePage(),
        'login_page': (context) => const LoginPage(),
      },
    ),
  );
}
