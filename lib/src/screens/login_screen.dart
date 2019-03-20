import 'package:flutter/material.dart';
import '../blocs/login/bloc_login.dart';

class LoginScreen extends StatelessWidget {
  Widget _emailField() {
    return StreamBuilder(
      stream: blockLogin.streamEmail,
      builder: (context, snapshot){
        return TextField(
          onChanged: blockLogin.addSinkEmail,
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            hintText: "email@example.com",
            labelText: "Email",
            errorText: snapshot.error
          ),
        );
      }
    );
  }

  Widget _passwordField() {
    return StreamBuilder(
      stream: blockLogin.streamPassword,
      builder: (context, snapshot){
        return TextField(
          onChanged: blockLogin.addSinkPassword,
          obscureText: true,
          maxLength: 16,
          decoration: InputDecoration(
            labelText: "Password",
            errorText: snapshot.error
          ),
        );
      }
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

