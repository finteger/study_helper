import 'package:flutter/material.dart';

/// A widget that demonstrates user inputs and gestures in Flutter.
class UserInputsAndGesturesWidget extends StatefulWidget {
  const UserInputsAndGesturesWidget({Key? key}) : super(key: key);

  @override
  _UserInputsAndGesturesWidgetState createState() =>
      _UserInputsAndGesturesWidgetState();
}

class _UserInputsAndGesturesWidgetState
    extends State<UserInputsAndGesturesWidget> {
  // State variable to keep track of the switch's status
  bool _isSwitched = false;
  // State variable to keep track of the selected slider value
  double _sliderValue = 50.0;
  // State variable to keep track of the text field input
  String _textFieldValue = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        // Padding around the main content
        padding: const EdgeInsets.all(16.0),
        child: Column(
          // Centering the children within the column
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'User Inputs & Gestures',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),

            // Switch widget with a title and a callback for changes
            SwitchListTile(
              title: Text('Switch'),
              value: _isSwitched,
              onChanged: (bool value) {
                setState(() {
                  _isSwitched = value;
                });
              },
            ),
            SizedBox(height: 20),

            // Slider widget to adjust a value between 0 and 100
            Slider(
              value: _sliderValue,
              min: 0,
              max: 100,
              divisions: 100,
              label: _sliderValue.round().toString(),
              onChanged: (double value) {
                setState(() {
                  _sliderValue = value;
                });
              },
            ),
            SizedBox(height: 20),

            // Text field widget to accept user input
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter Text',
              ),
              onChanged: (String value) {
                setState(() {
                  _textFieldValue = value;
                });
              },
            ),
            SizedBox(height: 20),

            // GestureDetector to handle tap gestures
            GestureDetector(
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Container tapped!')),
                );
              },
              child: Container(
                color: Colors.blue,
                width: 100,
                height: 100,
                child: Center(
                  child: Text(
                    'Tap me',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),

            // Display the current state values
            Text(
              'Switch is ${_isSwitched ? "ON" : "OFF"}',
              style: TextStyle(fontSize: 16),
            ),
            Text(
              'Slider value: ${_sliderValue.toStringAsFixed(1)}',
              style: TextStyle(fontSize: 16),
            ),
            Text(
              'Text field value: $_textFieldValue',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
