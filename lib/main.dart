/*import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';
import 'package:adventurehub/screens/homescreen.dart';
import 'package:adventurehub/screens/Explore.dart';

void main() {
  runApp(const AdventureHub());
}

class AdventureHub extends StatelessWidget {
  const AdventureHub({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // Define the initial route
      initialRoute: '/',
      // Define the routes
      routes: {
        '/': (context) =>
            const SplashScreen(), // Navigate to SplashScreen initially
        '/home': (context) => const HomeScreen(),
        '/explore': (context) => Explore(), // Define the route for '/home'
      },
    );
  }
}*/

import 'package:adventurehub/screens/Explore.dart';
import 'package:flutter/material.dart';
import 'package:adventurehub/screens/splash_screen.dart';
import 'package:adventurehub/screens/homescreen.dart';

import 'package:adventurehub/screens/About.dart';
import 'package:adventurehub/screens/loginscreen.dart';

void main() {
  runApp(const AdventureHub());
}

class AdventureHub extends StatelessWidget {
  const AdventureHub({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/login': (context) => LoginScreen(),
        '/home': (context) => const HomeScreen(),
        '/explore': (context) => Explore(),
        '/about': (context) => AboutPage(),
      },
    );
  }
}
