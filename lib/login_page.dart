import 'package:flutter/material.dart';
import 'package:mobile_controller/home_page.dart';
import 'package:mobile_controller/register_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(
                  top: 110,
                ),
                child: Image.asset(
                  'images/logo.png',
                  height: 200,
                  width: 200,
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  top: 20,
                  bottom: 20
                ),
                child: TextField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Username'
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  bottom: 20
                ),
                child: TextField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Password'
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: (){
                  Navigator.push(
                    context, 
                    MaterialPageRoute(
                      builder: (context) => new HomePage(),
                    )
                ) ;
              },
                child: const Text('Login'),
              ),
              InkWell(
                onTap: (){
                  Navigator.push(
                    context, 
                    MaterialPageRoute(
                      builder: (context) => new RegisterPage(),
                    )
                  );
                },
                child: RichText(
                  text: TextSpan(
                    text: 'Dont Have an Account? ',
                    style: TextStyle(
                      color : Colors.black,
                    ),
                    children: const <TextSpan>[
                      TextSpan(
                        text: 'Register', 
                        style: TextStyle(
                          color : Colors.blue,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
