import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  Widget _emailField() {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        hintText: "email@example.com",
        labelText: "Email"
      ),
    );
  }

  Widget _passwordField() {
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
        labelText: "Password"
      ),
    );
  }

  Widget _submitButton() {
    return RaisedButton(
      color: Colors.blue,
      child: Text(
        "Login",
        style: TextStyle(
          color: Colors.white
        ),
      ),
      onPressed: (){},
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          _emailField(),
          _passwordField(),
          SizedBox(height: 20.0),
          _submitButton()
        ],
      ),
    );
  }
}

