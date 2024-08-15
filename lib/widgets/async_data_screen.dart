import 'package:flutter/material.dart';

/// Screen to demonstrate fetching data asynchronously from a Firestore-like service.
class AsyncDataScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: FutureBuilder<List<Map<String, dynamic>>>(
        // Simulate fetching data from a Firestore-like service
        future: _fetchMockData(),
        builder: (context, snapshot) {
          // While data is being fetched, show a loading spinner
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }
          // If there's an error, display an error message
          else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          }
          // If no data is returned, show a 'no data' message
          else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return Center(child: Text('No data found.'));
          }
          // If data is successfully retrieved, display it in a list
          else {
            final items = snapshot.data!;
            return ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                final item = items[index];
                return ListTile(
                  title: Text(item['name']), // Display item name
                  subtitle:
                      Text(item['description']), // Display item description
                );
              },
            );
          }
        },
      ),
    );
  }

  // Simulate fetching data from a Firestore-like service
  Future<List<Map<String, dynamic>>> _fetchMockData() async {
    // Simulate network delay
    await Future.delayed(Duration(seconds: 2));

    // Return mock data
    return [
      {'name': 'Item 1', 'description': 'Description of Item 1'},
      {'name': 'Item 2', 'description': 'Description of Item 2'},
      {'name': 'Item 3', 'description': 'Description of Item 3'},
    ];
  }
}
