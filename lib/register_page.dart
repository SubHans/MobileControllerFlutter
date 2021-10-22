import 'package:flutter/material.dart';
import 'package:mobile_controller/login_page.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({ Key? key }) : super(key: key);

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
                onPressed: null,
                child: const Text('Register'),
              ),
              InkWell(
                onTap: (){
                  Navigator.push(
                    context, 
                    MaterialPageRoute(
                      builder: (context) => new LoginPage(),
                    )
                  );
                },
                child: RichText(
                  text: TextSpan(
                    text: 'Already Have an Account? ',
                    style: TextStyle(
                      color : Colors.black,
                    ),
                    children: const <TextSpan>[
                      TextSpan(
                        text: 'Login', 
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