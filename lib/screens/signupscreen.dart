import 'package:flutter/material.dart';
import 'package:adventurehub/screens/loginscreen.dart'; 
import 'package:adventurehub/screens/homescreen.dart'; 
import 'package:lottie/lottie.dart'; 

class SignUpScreen extends StatelessWidget {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 60), 
                Text(
                  'Get Started!',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(47, 90, 10, 1), 
                  ),
                ),
                SizedBox(height: 20),
                Lottie.asset(
                  'animations/starting.json',
                  height: 200,
                  width: 200,
                ),
                SizedBox(height: 20),
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
                TextField(
                  controller: confirmPasswordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Confirm Password',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    // if all fields are not empty
                    if (usernameController.text.isNotEmpty &&
                        passwordController.text.isNotEmpty &&
                        confirmPasswordController.text.isNotEmpty) {
                      // if passwords match
                      if (passwordController.text == confirmPasswordController.text) {
                        // sign-up logic here later
                        bool isSignedUp = true;
                        if (isSignedUp) {
                          
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder: (context) => HomeScreen()),
                          );
                        } else {
                          // Show an error message or snackbar if sign-up fails
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text('Sign up failed. Please try again.'),
                            ),
                          );
                        }
                      } else {
                        
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('Passwords do not match.'),
                          ),
                        );
                      }
                    } else {
                      
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Please fill in all fields.'),
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
                          'Sign up',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(width: 10),
                        Icon(Icons.login, size: 20), 
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20),
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
                          // Google sign-up logic will add later
                        },
                        icon: Icon(Icons.g_mobiledata, size: 30, color: Colors.white),
                      ),
                    ),
                    SizedBox(width: 20),
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromRGBO(47, 90, 10, 1), 
                      ),
                      child: IconButton(
                        onPressed: () {
                          // email sign-up logic will add later
                        },
                        icon: Icon(Icons.email, size: 30, color: Colors.white),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                TextButton(
                  onPressed: () {
            
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => LoginScreen()),
                    );
                  },
                  child: Text(
                    'Already have an account? Login',
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
