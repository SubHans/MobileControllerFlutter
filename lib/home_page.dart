import 'package:flutter/material.dart';
import 'package:mobile_controller/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Te-Fa App")),
      body: SafeArea(
          child: Container(
              child: Column(
        children: <Widget>[
          Image.network(
            'http://redaksi.pens.ac.id/wp-content/uploads/2021/01/flutter-logo-sharing.png',
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 20,
          ),
          Text("Mobile Controller Iot"),
          Text("Team Teaching"),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Image.network(
                'https://pbs.twimg.com/profile_images/1187814172307800064/MhnwJbxw_400x400.jpg',
                width: 150,
              ),
              Image.network(
                'https://pbs.twimg.com/profile_images/1187814172307800064/MhnwJbxw_400x400.jpg',
                width: 150,
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Image.network(
                'https://pbs.twimg.com/profile_images/1187814172307800064/MhnwJbxw_400x400.jpg',
                width: 150,
              ),
              Image.network(
                'https://pbs.twimg.com/profile_images/1187814172307800064/MhnwJbxw_400x400.jpg',
                width: 150,
              ),
            ],
          )
        ],
      ))),
      drawer: NavDrawer(),
    );
  }
}
