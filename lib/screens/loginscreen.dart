import 'package:flutter/material.dart';
import 'package:adventurehub/screens/signupscreen.dart';
import 'package:adventurehub/screens/homescreen.dart';
import 'package:lottie/lottie.dart';

class LoginScreen extends StatelessWidget {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 60),
                Text(
                  'Welcome',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(47, 90, 10, 1), // Dark green color
                  ),
                ),
                SizedBox(height: 20),
                Lottie.asset(
                  'animations/starting.json',
                  height: 200,
                  width: 200,
                ),
                SizedBox(height: 40),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      TextField(
                        controller: usernameController,
                        decoration: InputDecoration(
                          hintText: 'Username',
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(height: 20),
                      TextField(
                        controller: passwordController,
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: 'Password',
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {
                          // if both fields are not empty
                          if (usernameController.text.isNotEmpty &&
                              passwordController.text.isNotEmpty) {
                            // login logic here later

                            bool isLoggedIn = true;
                            if (isLoggedIn) {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomeScreen()),
                              );
                            } else {
                              // error message or snackbar if login fails
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content:
                                      Text('Login failed. Please try again.'),
                                ),
                              );
                            }
                          } else {
                            // error message if fields are empty
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                    'Please enter both username and password.'),
                              ),
                            );
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Color.fromRGBO(47, 90, 10, 1),
                          onPrimary: Colors.white,
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 12),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Login',
                                style: TextStyle(
                                  fontSize: 18,
                                ),
                              ),
                              SizedBox(width: 10),
                              Icon(Icons.login, size: 20), // Login icon
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromRGBO(47, 90, 10, 1),
                      ),
                      child: IconButton(
                        onPressed: () {
                          // Google sign-in logic later
                        },
                        icon: Icon(Icons.g_mobiledata,
                            size: 30, color: Colors.white),
                      ),
                    ),
                    SizedBox(width: 40),
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromRGBO(47, 90, 10, 1),
                      ),
                      child: IconButton(
                        onPressed: () {
                          // Gmail sign-in logic later
                        },
                        icon: Icon(Icons.mail, size: 30, color: Colors.white),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignUpScreen()),
                    );
                  },
                  child: Text(
                    'Don\'t have an account? Sign up',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color.fromRGBO(47, 90, 10, 1),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
