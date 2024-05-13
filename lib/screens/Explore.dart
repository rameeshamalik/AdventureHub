/*import 'package:flutter/material.dart';
import 'package:adventurehub/screens/explorescreens/murreescreen.dart';
import 'package:adventurehub/screens/explorescreens/gilgitscreen.dart';
import 'package:adventurehub/screens/explorescreens/hunza.dart';
import 'package:adventurehub/screens/explorescreens/skarduscreen.dart';
import 'package:adventurehub/screens/explorescreens/fairymeadows.dart';

class Explore extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Explore"),
        backgroundColor: Color.fromARGB(255, 146, 120, 16),
        // backgroundColor: Colors.blueGrey,
      ),
      body: ListView(
        children: [
          DestinationTile(
            destinationName: "Murree",
            imageUrl: "assets/murree.jpg",
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MurreeScreen()),
              );
            },
          ),
          DestinationTile(
            destinationName: "Gilgit",
            imageUrl: "assets/gilgit.jpg",
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => GilgitScreen()),
              );
            },
          ),
          DestinationTile(
            destinationName: "Hunza",
            imageUrl: "assets/hunza.jpg",
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HunzaScreen()),
              );
            },
          ),
          DestinationTile(
            destinationName: "Skardu",
            imageUrl: "assets/skardu.jpg",
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SkarduScreen()),
              );
            },
          ),
          DestinationTile(
            destinationName: "Fairy Meadows",
            imageUrl: "assets/fairy.jpg",
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FairyMeadowsScreen()),
              );
            },
          ),

          // Add more DestinationTiles for other destinations
        ],
      ),
    );
  }
}

class DestinationTile extends StatelessWidget {
  final String destinationName;
  final String imageUrl;
  final VoidCallback onTap;

  const DestinationTile({
    required this.destinationName,
    required this.imageUrl,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              imageUrl,
              fit: BoxFit.cover,
              width: double.infinity,
              height: 400,
            ),
            Padding(
              padding: const EdgeInsets.all(9.0),
              child: Center(
                // Center the text horizontally
                child: Text(
                  destinationName,
                  style: TextStyle(
                    fontSize: 24, // Increased font size
                    fontWeight: FontWeight.bold,
                    color: Colors.green, // Set text color to green
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}*/
import 'package:flutter/material.dart';
import 'package:adventurehub/screens/explorescreens/murreescreen.dart';
import 'package:adventurehub/screens/explorescreens/gilgitscreen.dart';
import 'package:adventurehub/screens/explorescreens/hunza.dart';
import 'package:adventurehub/screens/explorescreens/skarduscreen.dart';
import 'package:adventurehub/screens/explorescreens/fairymeadows.dart';

class Explore extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Explore"),
        backgroundColor: Color.fromARGB(255, 146, 120, 16),
      ),
      body: ListView(
        children: [
          DestinationTile(
            destinationName: "Murree",
            imageUrl: "assets/murree.jpg",
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MurreeScreen()),
              );
            },
          ),
          DestinationTile(
            destinationName: "Gilgit",
            imageUrl: "assets/gilgit.jpg",
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => GilgitScreen()),
              );
            },
          ),
          DestinationTile(
            destinationName: "Hunza",
            imageUrl: "assets/hunza.jpg",
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HunzaScreen()),
              );
            },
          ),
          DestinationTile(
            destinationName: "Skardu",
            imageUrl: "assets/skardu.jpg",
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SkarduScreen()),
              );
            },
          ),
          DestinationTile(
            destinationName: "Fairy Meadows",
            imageUrl: "assets/fairy.jpg",
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FairyMeadowsScreen()),
              );
            },
          ),
        ],
      ),
    );
  }
}

class DestinationTile extends StatelessWidget {
  final String destinationName;
  final String imageUrl;
  final VoidCallback onTap;

  const DestinationTile({
    required this.destinationName,
    required this.imageUrl,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(
                color: const Color.fromARGB(255, 146, 120, 16),
                width: 2), // Set border color and width
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                      color: const Color.fromARGB(255, 146, 120, 16),
                      width: 2), // Set border color and width
                ),
                child: Image.asset(
                  imageUrl,
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: 400,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(9.0),
                child: Center(
                  child: Text(
                    destinationName,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
