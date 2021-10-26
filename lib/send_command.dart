import 'package:flutter/material.dart';
import 'package:mobile_controller/drawer.dart';

class SendCommand extends StatelessWidget {
  const SendCommand({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Te-Fa App")
      ),
      body: SingleChildScrollView(
        child: SafeArea(
            child: Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(10),
                      color: Colors.blue[100],
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
                      padding: EdgeInsets.all(10),
                      color: Colors.blue[100],
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          width: 170,
                          padding: EdgeInsets.all(10),
                          color: Colors.blue[100],
                          child: Column(
                            children: <Widget>[
                              Align(
                                alignment: Alignment.topLeft,
                                child: Text("Relay Controller"),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              SwitchWidget(),
                            ],
                          ),
                        ),
                        Container(
                          width: 170,
                          padding: EdgeInsets.all(10),
                          color: Colors.blue[100],
                          child: Column(
                            children: <Widget>[
                              Align(
                                alignment: Alignment.topLeft,
                                child: Text("Buzzer Controller"),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              SwitchWidget(),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      color: Colors.blue[100],
                      child: Column(
                        children: <Widget>[
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text("Plain Text Command"),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            margin: EdgeInsets.all(10),
                            height: 5 * 24.0,
                            child: TextField(
                              maxLines: 5,
                              decoration: InputDecoration(
                                hintText: "Text",
                                fillColor: Colors.white,
                                filled: true,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topRight,
                            child: ElevatedButton(
                              onPressed: (){

                              },
                              child: const Text('Send'),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
            ),
        ),
      ),
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

class SwitchWidget extends StatefulWidget {
  const SwitchWidget({ Key? key }) : super(key: key);

  @override
  _SwitchWidgetState createState() => _SwitchWidgetState();
}

class _SwitchWidgetState extends State<SwitchWidget> {
  @override
  Widget build(BuildContext context) {
    bool isSwitched = false;
    return Switch(
      value: isSwitched,
      onChanged: (value) {
        setState(() {
          isSwitched = value;
        });
      },
      activeTrackColor: Colors.blueGrey[200],
      activeColor: Colors.blueGrey[600],
    );
  }
}