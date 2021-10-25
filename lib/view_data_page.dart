import 'package:flutter/material.dart';
import 'package:mobile_controller/drawer.dart';

class ViewDataPage extends StatelessWidget {
  const ViewDataPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Te-Fa App")),
      body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Realtime Sensor Reading",
                        style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: Container(
                            color: Colors.blue[50],
                            padding: EdgeInsets.only(top: 20, left: 10, right: 10, bottom: 20),
                            width: 170,
                            child: Row(
                              children: <Widget>[
                                Image.asset(
                                  'images/thermometer.png',
                                  height: 40,
                                  width: 40,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text("Temperature"),
                                    Text("30 C"),
                                 ]
                                ),
                              ],
                            ),
                          ),
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: Container(
                            color: Colors.blue[50],
                            padding: EdgeInsets.only(top: 20, left: 10, right: 10, bottom: 20),
                            width: 170,
                            child: Row(
                              children: <Widget>[
                                Image.asset(
                                  'images/humidity.png',
                                  height: 40,
                                  width: 40,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text("Humidity"),
                                    Text("30 C"),
                                 ]
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: Container(
                            color: Colors.blue[50],
                            padding: EdgeInsets.only(top: 20, left: 10, right: 10, bottom: 20),
                            width: 170,
                            child: Row(
                              children: <Widget>[
                                Image.asset(
                                  'images/idea.png',
                                  height: 40,
                                  width: 40,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text("Light Intensity"),
                                    Text("30 C"),
                                 ]
                                ),
                              ],
                            ),
                          ),
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: Container(
                            color: Colors.blue[50],
                            padding: EdgeInsets.only(top: 20, left: 10, right: 10, bottom: 20),
                            width: 170,
                            child: Row(
                              children: <Widget>[
                                Image.asset(
                                  'images/distance.png',
                                  height: 40,
                                  width: 40,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text("Distance"),
                                    Text("30 C"),
                                 ]
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      color: Colors.blue,
                      child: Column(
                        children: <Widget>[
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Temperature and Humidity Sensor",
                              style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Image.network(
                                'https://pbs.twimg.com/profile_images/1187814172307800064/MhnwJbxw_400x400.jpg',
                                width: 120,
                              ),
                              Image.network(
                                'https://pbs.twimg.com/profile_images/1187814172307800064/MhnwJbxw_400x400.jpg',
                                width: 120,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      color: Colors.blue,
                      child: Column(
                        children: <Widget>[
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Light intensity and Distance Sensor",
                              style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Image.network(
                                'https://pbs.twimg.com/profile_images/1187814172307800064/MhnwJbxw_400x400.jpg',
                                width: 120,
                              ),
                              Image.network(
                                'https://pbs.twimg.com/profile_images/1187814172307800064/MhnwJbxw_400x400.jpg',
                                width: 120,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    )
                  ],
                )),
          )),
      drawer: NavDrawer(),
    );
  }
}
