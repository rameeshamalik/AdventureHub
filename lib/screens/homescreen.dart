/*import 'package:flutter/material.dart';
import 'package:adventurehub/common/menudrawer.dart';
import 'package:adventurehub/common/bottomnavbar.dart';

import 'package:adventurehub/screens/plansscreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double _buttonWidth = 200.0;
  bool _isButtonVisible = false;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 1), () {
      setState(() {
        _isButtonVisible = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "AdventureHub",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color.fromARGB(255, 146, 120, 16),
        elevation: 0, // Removes the shadow below the app bar
      ),
      drawer: const MenuDrawer(),
      bottomNavigationBar: MyBottomNavBar(),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("front.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height *
                    0.3), // Adjust this value as needed
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AnimatedOpacity(
                    duration: Duration(seconds: 1),
                    opacity: _isButtonVisible ? 1.0 : 0.0,
                    child: Column(
                      children: [
                        Text(
                          "Plan Your",
                          style: TextStyle(
                            fontSize: 47,
                            fontWeight: FontWeight.w300, // Light font weight
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "Next Adventure",
                          style: TextStyle(
                            fontSize: 45,
                            fontWeight: FontWeight.bold, // Bold font weight
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  AnimatedContainer(
                    duration: Duration(seconds: 1),
                    width: _isButtonVisible ? _buttonWidth : 0,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PlansScreen()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        primary:
                            Color.fromARGB(255, 131, 97, 54), // Purple color
                        textStyle: TextStyle(
                            color: Colors.white), // Set text color to white
                      ),
                      child: Text(
                        "Get Started",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold, // Bold font weight
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
*/

import 'package:flutter/material.dart';
import 'package:adventurehub/common/menudrawer.dart';
import 'package:adventurehub/common/bottomnavbar.dart';
import 'package:adventurehub/screens/Explore.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _fadeInAnimation;
  late Animation<double> _slideAnimation;
  bool _isButtonVisible = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );

    _fadeInAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ));

    // Move the initialization of _slideAnimation after super.initState()
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      _slideAnimation = Tween<double>(
        begin: MediaQuery.of(context).size.height * 0.3,
        end: 0.0,
      ).animate(CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOut,
      ));

      _controller.forward();

      _controller.addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          setState(() {
            _isButtonVisible = true;
          });
        }
      });
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "AdventureHub",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color.fromARGB(255, 133, 109, 17),
        elevation: 0, // Removes the shadow below the app bar
      ),
      drawer: const MenuDrawer(),
      bottomNavigationBar: MyBottomNavBar(),
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              "assets/front.jpg",
              fit: BoxFit.cover,
            ),
          ),
          AnimatedBuilder(
            animation: _controller,
            builder: (context, child) {
              return Padding(
                padding: EdgeInsets.only(top: _slideAnimation.value ?? 0),
                child: Center(
                  child: Opacity(
                    opacity: _fadeInAnimation.value ?? 0,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Text(
                              "Plan Your",
                              style: TextStyle(
                                fontSize: 45,
                                fontWeight: FontWeight.w300,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "Next Adventure",
                              style: TextStyle(
                                fontSize: 43,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        AnimatedOpacity(
                          opacity: _isButtonVisible ? 1.0 : 0.0,
                          duration: Duration(milliseconds: 500),
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Explore(),
                                ),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Color.fromRGBO(47, 90, 10, 1),
                              textStyle: TextStyle(color: Colors.white),
                              padding: EdgeInsets.symmetric(
                                vertical: 15,
                                horizontal: 40,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              shadowColor: Colors.black.withOpacity(0.3),
                              elevation: 5,
                              // Add hover effect
                              onSurface: Colors.grey,
                              onPrimary: Colors.white,
                            ),
                            child: Text(
                              "Get Started",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
