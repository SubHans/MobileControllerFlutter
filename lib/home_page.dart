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
          margin: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text( 
                "Welcome User",
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(40.0),
                child: Container(
                  color: Colors.blue[50],
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Connectivity Status",
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text("Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor."),
                    ],
                  ),
                ),
              ),
              Container(
                child: 
                Text(
                  "Sensor Available",
                  style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  ),
                ),
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
              ),
            ],
          ),
        ),
      ),
      drawer: NavDrawer(),
    );
  }
}
