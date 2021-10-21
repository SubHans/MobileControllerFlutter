import 'package:flutter/material.dart';
import 'package:mobile_controller/drawer.dart';

class SendCommand extends StatelessWidget {
  const SendCommand({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Te-Fa App")),
      body: SafeArea(
          child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    color: Colors.amber,
                    child: Column(
                      children: <Widget>[
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text("Led Controller"),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        const MyStatefulWidget(),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    color: Colors.amber,
                    child: Column(
                      children: <Widget>[
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text("Fan Speed"),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        const MyStatefulWidget(),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Container(
                        width: 170,
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        color: Colors.amber,
                        child: Column(
                          children: <Widget>[
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text("Relay Controller"),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Switch(value: true, onChanged: null)
                          ],
                        ),
                      ),
                      Container(
                        width: 170,
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        color: Colors.amber,
                        child: Column(
                          children: <Widget>[
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text("Buzzer Controller"),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Switch(value: true, onChanged: null)
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    color: Colors.amber,
                    child: Column(
                      children: <Widget>[
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text("Plain Text Command"),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextField(
                          decoration: const InputDecoration(
                              border: UnderlineInputBorder(), hintText: 'Text'),
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: ElevatedButton(
                            onPressed: null,
                            child: const Text('Send'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ))),
      drawer: NavDrawer(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  double _currentSliderValue = 20;

  @override
  Widget build(BuildContext context) {
    return Slider(
      value: _currentSliderValue,
      min: 0,
      max: 100,
      divisions: 5,
      label: _currentSliderValue.round().toString(),
      onChanged: (double value) {
        setState(() {
          _currentSliderValue = value;
        });
      },
    );
  }
}
