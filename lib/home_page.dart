import 'package:flutter/material.dart';
import 'package:mobile_controller/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Te-Fa App")),
      body: const Center(
        child: Text('My Page!'),
      ),
      drawer: NavDrawer(),
    );
  }
}
