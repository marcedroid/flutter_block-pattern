import 'package:flutter/material.dart';
import '../blocs/login/bloc_login.dart';

class LoginScreen extends StatelessWidget {

  Widget _emailField() {
    return StreamBuilder(
      stream: blockLogin.streamEmail,
      builder: (context, snapshot){
        return TextField(
          onChanged: blockLogin.sinkEmail,
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
          onChanged: blockLogin.sinkPassword,
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
    return StreamBuilder(
      stream: blockLogin.streamSubmit,
      builder: (context, snapshot){
        return RaisedButton(
          shape: StadiumBorder(),
          color: Colors.blue,
          child: Text(
            "Login",
            style: TextStyle(
                color: Colors.white
            ),
          ),
          onPressed: snapshot.hasData ? (){fnSubmit(context);}:null,
        );
      }
    );
  }

  fnSubmit(BuildContext context){
    Scaffold.of(context).showSnackBar(
      SnackBar(
        content: Text("Login: [${blockLogin.emailController.value}, ${blockLogin.passwordController.value}]")
      )
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

