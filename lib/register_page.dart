import 'package:flutter/material.dart';
import 'package:mobile_controller/login_page.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: SafeArea(
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
              ValidationRegister(),
            ],
          ),
        ),
      )),
    );
  }
}

class ValidationRegister extends StatefulWidget {
  const ValidationRegister({Key? key}) : super(key: key);

  @override
  ValidationRegisterState createState() {
    return ValidationRegisterState();
  }
}

class ValidationRegisterState extends State<ValidationRegister> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 20),
            child: TextFormField(
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), hintText: 'Username'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter username';
                }
                return null;
              },
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 20),
            child: TextFormField(
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), hintText: 'Password'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter password';
                }
                return null;
              },
            ),
          ),
          Container(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                // Validate returns true if the form is valid, or false otherwise.
                if (_formKey.currentState!.validate()) {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => new LoginPage(),
                      ));
                  // If the form is valid, display a snackbar. In the real world,
                  // you'd often call a server or save the information in a database.
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Processing Register')),
                  );
                }
              },
              child: const Text('Register'),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => new LoginPage(),
                  ));
            },
            child: RichText(
              text: TextSpan(
                text: 'Already Have an Account? ',
                style: TextStyle(
                  color: Colors.black,
                ),
                children: const <TextSpan>[
                  TextSpan(
                    text: 'Login',
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
