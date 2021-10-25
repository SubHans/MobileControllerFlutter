import 'package:flutter/material.dart';
import 'package:mobile_controller/drawer.dart';

class UserPage extends StatelessWidget {
  const UserPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Te-Fa App")),
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(top: 20),
          child: Column(
            children: <Widget>[
              Image.asset(
                'images/man.png',
                width: 150,
                height: 150,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Le Minerale",
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.all(20),
                color: Colors.blue[300],
                width: double.infinity,
                height: 350,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Email : ',
                      style: const TextStyle(
                        fontWeight: FontWeight.normal,
                        letterSpacing: 1,
                        fontSize: 16,
                        color: Colors.blueGrey,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Leminerale@gmail.com',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.5,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Alamat : ',
                      style: const TextStyle(
                        fontWeight: FontWeight.normal,
                        letterSpacing: 1,
                        fontSize: 16,
                        color: Colors.blueGrey,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Jalan Soekarno Hatta Indah',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.5,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'No Telp : ',
                      style: const TextStyle(
                        fontWeight: FontWeight.normal,
                        letterSpacing: 1,
                        fontSize: 16,
                        color: Colors.blueGrey,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      '081594346996',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.5,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      drawer: NavDrawer(),
    );
  }
}
