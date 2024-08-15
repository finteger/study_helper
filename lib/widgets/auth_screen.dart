import 'package:flutter/material.dart';

/// Screen to demonstrate user authentication with mock data.
class AuthScreen extends StatefulWidget {
  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  String? _authMessage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _emailController,
              decoration: InputDecoration(labelText: 'Email'),
            ),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _signIn,
              child: Text('Sign In'),
            ),
            SizedBox(height: 20),
            if (_authMessage != null)
              Text(
                _authMessage!,
                style: TextStyle(color: Colors.red),
              ),
          ],
        ),
      ),
    );
  }

  // Simulate user sign-in
  Future<void> _signIn() async {
    final email = _emailController.text;
    final password = _passwordController.text;

    // Simulate network delay
    await Future.delayed(Duration(seconds: 2));

    // Mock authentication logic
    if (email == 'test@example.com' && password == 'password123') {
      setState(() {
        _authMessage = 'Sign-in successful!';
      });
    } else {
      setState(() {
        _authMessage = 'Invalid email or password.';
      });
    }
  }
}
