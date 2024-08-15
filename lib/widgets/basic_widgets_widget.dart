import 'package:flutter/material.dart';

class BasicWidgetsWidget extends StatelessWidget {
  const BasicWidgetsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              // Text Widget with Padding
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Text Widget',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),

              SizedBox(height: 20),

              // Row Widget with Padding and Container
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          color: Colors.blue,
                          padding: EdgeInsets.all(10),
                          child: Text(
                            'Row Item 1',
                            style: TextStyle(color: Colors.white),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          color: Colors.green,
                          padding: EdgeInsets.all(10),
                          child: Text(
                            'Row Item 2',
                            style: TextStyle(color: Colors.white),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 20),

              // Column Widget with Padding and Container
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Container(
                        color: Colors.red,
                        padding: EdgeInsets.all(10),
                        child: Text(
                          'Column Item 1',
                          style: TextStyle(color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Container(
                        color: Colors.orange,
                        padding: EdgeInsets.all(10),
                        child: Text(
                          'Column Item 2',
                          style: TextStyle(color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 20),

              // Stack Widget with Padding and Positioned Widgets
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Stack(
                  alignment: Alignment.center,
                  children: <Widget>[
                    Container(
                      width: 200,
                      height: 200,
                      color: Colors.grey[300],
                    ),
                    Positioned(
                      bottom: 10,
                      child: Container(
                        width: 150,
                        height: 150,
                        color: Colors.blueAccent,
                        child: Center(
                          child: Text(
                            'Stack Item',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 20,
                      child: Container(
                        width: 100,
                        height: 100,
                        color: Colors.red,
                        child: Center(
                          child: Text(
                            'Top Item',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 20),

              // Expanded Widget inside a Row with Padding
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          color: Colors.purple,
                          height: 50,
                          child: Center(
                            child: Text(
                              'Expanded Item 1',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          color: Colors.teal,
                          height: 50,
                          child: Center(
                            child: Text(
                              'Expanded Item 2',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 20),

              // Image Widget with Padding
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Image.asset(
                  'assets/images/rdp.jpg', // Ensure this path is correct
                  width: 100,
                  height: 100,
                ),
              ),

              SizedBox(height: 20),

              // ElevatedButton Widget with Padding
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('Click Me'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
