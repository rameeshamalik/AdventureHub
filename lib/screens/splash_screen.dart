/*import 'dart:async';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:adventurehub/screens/homescreen.dart'; // Import your home screen

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Timer _timer;
  int _animationIterations = 0;
  final int _totalAnimationDurationInSeconds =
      5; // Change this to match your animation loop duration

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: _totalAnimationDurationInSeconds),
    )..repeat(reverse: true);

    // Start a timer to check the animation iterations
    _timer = Timer.periodic(Duration(seconds: _totalAnimationDurationInSeconds),
        (timer) {
      if (_animationIterations >= 1) {
        // If animation has iterated twice, navigate to the home screen
        _navigateToHome();
        timer.cancel(); // Cancel the timer
      } else {
        _animationIterations++; // Increment animation iterations
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    _timer.cancel(); // Cancel the timer when disposing the widget
    super.dispose();
  }

  void _navigateToHome() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => HomeScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Lottie.asset(
          'animations/starting.json',
          width: 200,
          height: 200,
          fit: BoxFit.cover,
          animate: true,
          controller: _controller,
        ),
      ),
    );
  }
}*/

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:adventurehub/screens/loginscreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Timer _timer;
  int _animationIterations = 0;
  final int _totalAnimationDurationInSeconds = 5;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: _totalAnimationDurationInSeconds),
    )..repeat(reverse: true);

    _timer = Timer.periodic(Duration(seconds: _totalAnimationDurationInSeconds),
        (timer) {
      if (_animationIterations >= 1) {
        _navigateToRegister();
        timer.cancel();
      } else {
        _animationIterations++;
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    _timer.cancel();
    super.dispose();
  }

  void _navigateToRegister() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => LoginScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Lottie.asset(
          'animations/starting.json',
          width: 200,
          height: 200,
          fit: BoxFit.cover,
          animate: true,
          controller: _controller,
        ),
      ),
    );
  }
}
