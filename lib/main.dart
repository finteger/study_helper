import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:study_helper/screens/categories.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  final List<Map<String, dynamic>> categories = [
    {'name': 'Basic Widgets', 'icon': Icons.widgets},
    {'name': 'Flutter Layout', 'icon': Icons.view_module},
    {'name': 'User Inputs & Gestures', 'icon': Icons.touch_app},
    {'name': 'Routing', 'icon': Icons.map},
    {'name': 'Alert Dialog', 'icon': Icons.info},
    {'name': 'Authentication', 'icon': Icons.lock}, // New category icon
    {'name': 'Asynchronous Data', 'icon': Icons.multitrack_audio},
  ];

  // Method to show the dialog box
  void _showInfoDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Information'),
          content: Text(
              '''This app was created by Todd Nash as a study guide for the Mobile App Development Course.  No information is collected on behalf of the user and no network connections are established.  View the full source code here: https://github.com/finteger/study_helper '''),
          actions: <Widget>[
            TextButton(
              child: Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: Row(
          children: [
            FlutterLogo(size: 40),
            SizedBox(width: 20),
            const Text(
              'Study Helper',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.info_outline),
            color: Colors.white,
            onPressed: () => _showInfoDialog(context),
          ),
        ],
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/images/rdp.jpg',
            fit: BoxFit.cover,
          ),
          Container(
            color:
                Colors.black.withOpacity(0.4), // Overlay for better readability
          ),
          ListView(
            padding: const EdgeInsets.all(16.0),
            children: categories.map((category) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          CategoryScreen(category: category['name']),
                    ),
                  );
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16.0),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(16.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            blurRadius: 8.0,
                            offset: Offset(0, 4),
                          ),
                        ],
                      ),
                      margin: const EdgeInsets.symmetric(vertical: 10.0),
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        children: [
                          Icon(
                            category['icon'],
                            size: 40,
                            color: Colors.white,
                          ),
                          SizedBox(width: 16.0),
                          Expanded(
                            child: Text(
                              category['name'],
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
