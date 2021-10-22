import 'package:flutter/material.dart';
import 'package:mobile_controller/send_command.dart';
import 'package:mobile_controller/view_data_page.dart';
import 'package:mobile_controller/home_page.dart';
import 'package:mobile_controller/send_command.dart';

class NavDrawer extends StatelessWidget {
  const NavDrawer({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("User"),
              accountEmail: Text("user@gmail.com"),
              // currentAccountPicture: CircleAvatar(
              //   backgroundColor:
              //       Theme.of(context).platform == TargetPlatform.iOS
              //           ? Colors.blue
              //           : Colors.white,
              //   child: Text(
              //     "A",
              //     style: TextStyle(fontSize: 40.0),
              //   ),
              // ),
              currentAccountPicture: Image.asset('images/man.png'),
            ),
            ListTile(
              // leading: CircleAvatar(
              //   backgroundColor:Colors.blue,
              //   child: Text(
              //     "H",
              //     style: TextStyle(fontSize: 30.0),
              //   ),
              // ),
              leading : Image.asset(
                'images/garage.png',
                height: 40,
                width: 40,),
              title: const Text('Home'),
              onTap: () {
                Navigator.pop(context);
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => HomePage())
                );
              },
            ),
            ListTile(
              leading : Image.asset(
                'images/statistics.png',
                height: 40,
                width: 40,
              ),
              title: const Text('View Data'),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => ViewDataPage()));
              },
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor:Colors.blue,
                child: Text(
                  "S",
                  style: TextStyle(fontSize: 30.0),
                ),
              ),
              // leading: Image.asset(
              //   'images/remote.png',
              //   height: 40,
              //   width: 40,
              // ),
              title: const Text('Send Command'),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => SendCommand()));
              },
            ),
            Divider(),
            ListTile(
              leading : Image.asset(
                'images/settings.png',
                height: 40,
                width: 40,
              ),
              title: const Text('Settings'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      );
  }
}