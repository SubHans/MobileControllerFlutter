import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Image.asset(
            'images/logo.png',
            height: 100,
            width: 75,
          ),
          TextField(
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Username'
            ),
          ),
          TextField(
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Password'
            ),
          ),
          ElevatedButton(
            onPressed: null,
            child: const Text('Register'),
          ),
          Text('Already have an account? Login'),
        ],
      ),
    );
  }
}