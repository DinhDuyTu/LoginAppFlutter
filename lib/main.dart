import 'package:flutter/material.dart';

void main() {
  runApp(LoginApp());
}

class LoginApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'To Do List',
      home: new Login(),
    );
  }
}

class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LoginState();
  }
}

class LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(
        //   title: Text('ToDo App'),
        // ),
        body: _mainApp(),
      ),
    );
  }

  Widget _mainApp() {
    return Center(
      child: Container(
        child: Center(
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: Container(),
              ),
              Expanded(
                flex: 8,
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.all(5.0),
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: "Email",
                          hintText: 'Enter your email',
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(5.0),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: "Password",
                          hintText: 'Enter your password',
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(5.0),
                      child: RaisedButton(
                        onPressed: () {},
                        child: Text(
                          'Login',
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        color: Colors.blue,
                        textColor: Colors.white,
                        padding: const EdgeInsets.only(
                          top: 15.0,
                          bottom: 15.0,
                          left: 50.0,
                          right: 50.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
