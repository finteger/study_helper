// lib/widgets/flutter_layout_widget.dart

import 'package:flutter/material.dart';

/// A widget that demonstrates basic Flutter layout widgets
class FlutterLayoutWidget extends StatelessWidget {
  const FlutterLayoutWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // Implement search functionality here
            },
          ),
        ],
      ),
      drawer: Drawer(
        // Drawer widget for navigation
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              // Header of the Drawer
              child: Text(
                'Drawer Header',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              // First item in the Drawer
              title: Text('Item 1'),
              onTap: () {
                // Implement action for Item 1 here
              },
            ),
            ListTile(
              // Second item in the Drawer
              title: Text('Item 2'),
              onTap: () {
                // Implement action for Item 2 here
              },
            ),
          ],
        ),
      ),
      body: Padding(
        // Padding around the main content
        padding: const EdgeInsets.all(16.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            // Defines the number of columns in the grid
            crossAxisCount: 2,
            crossAxisSpacing: 16.0,
            mainAxisSpacing: 16.0,
          ),
          itemCount: 4, // Total number of items in the grid
          itemBuilder: (context, index) {
            return Container(
              color: Colors.blueGrey[200 + (index * 100)],
              child: Center(
                child: Text(
                  'Category ${index + 1}',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        // Floating Action Button for additional actions
        onPressed: () {
          // Implement action for FAB here
        },
        child: Icon(Icons.add),
      ),
      bottomNavigationBar: BottomAppBar(
        // BottomAppBar with icons for additional actions
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                // Implement menu button functionality here
              },
            ),
            IconButton(
              icon: Icon(Icons.favorite),
              onPressed: () {
                // Implement favorite button functionality here
              },
            ),
            IconButton(
              icon: Icon(Icons.share),
              onPressed: () {
                // Implement share button functionality here
              },
            ),
          ],
        ),
      ),
    );
  }
}
