import 'package:flutter/material.dart';
import 'package:mobile_controller/drawer.dart';

class ViewDataPage extends StatelessWidget {
  const ViewDataPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Te-Fa App")),
      body: SafeArea(
          child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: <Widget>[
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text("Realtime Sensor Reading"),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Image.network(
                        'https://instabug.com/blog/wp-content/uploads/2020/02/AppDev_Flutter-Apps.png',
                        width: 170,
                      ),
                      Image.network(
                        'https://instabug.com/blog/wp-content/uploads/2020/02/AppDev_Flutter-Apps.png',
                        width: 170,
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
                        'https://instabug.com/blog/wp-content/uploads/2020/02/AppDev_Flutter-Apps.png',
                        width: 170,
                      ),
                      Image.network(
                        'https://instabug.com/blog/wp-content/uploads/2020/02/AppDev_Flutter-Apps.png',
                        width: 170,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    color: Colors.blue,
                    child: Column(
                      children: <Widget>[
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text("Temperature and Humidity Sensor"),
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
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    color: Colors.blue,
                    child: Column(
                      children: <Widget>[
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text("Light intensity and Distance Sensor"),
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
              ))),
      drawer: NavDrawer(),
    );
  }
}
