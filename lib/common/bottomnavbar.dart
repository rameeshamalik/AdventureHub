import 'package:flutter/material.dart';

class MyBottomNavBar extends StatelessWidget {
  const MyBottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: Colors.white,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(
          icon: Icon(Icons.explore), // Change the icon to the explore icon
          label: "Explore", // Change the label to "Explore"
        ),
      ],
      backgroundColor:
          Color.fromARGB(255, 146, 120, 16), // Set the background color here
      onTap: (index) {
        switch (index) {
          case 0:
            Navigator.pushNamed(context, "/home");
            break;
          case 1:
            Navigator.pushNamed(context, "/explore");
            break;
          default:
        }
      },
    );
  }
}
