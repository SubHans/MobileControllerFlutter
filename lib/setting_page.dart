import 'package:flutter/material.dart';
import 'package:mobile_controller/drawer.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Te-Fa App")),
      drawer: NavDrawer(),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            margin: EdgeInsets.all(20),
            child: Column(
              children: <Widget>[
                Row(
                  children: [
                    Expanded(
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Connectivity Status",
                        style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        ),
                      ),
                    ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  padding: EdgeInsets.all(10),
                  color: Colors.blueGrey[100],
                  child: Column(
                    children: [
                      Container(
                        child: Row(
                          children: <Widget>[
                            Text('Connected to : '),
                            Text('IP addr'),
                          ],
                        ),
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            ElevatedButton(
                              onPressed: (){
                              }, 
                              child: Text('Refresh')
                            ),
                            SizedBox(
                              width:10
                            ),
                            ElevatedButton(
                              onPressed: (){
                              }, 
                              child: Text('Disconnect')
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: ElevatedButton(
                    onPressed: (){
                    }, 
                    child: Text('Connect new Board')
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}