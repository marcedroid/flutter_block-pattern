import 'dart:async';
import 'validators.dart';

class BlocLogin with Validators{
  final _emailController = StreamController<String>.broadcast();
  final _passwordController = StreamController<String>.broadcast();

  //Add Data to Stream
  Function(String) get addSinkEmail => _emailController.sink.add;
  Function(String) get addSinkPassword => _passwordController.sink.add;

  //Retrieve Data from Stream
  Stream<String> get streamEmail => _emailController.stream.transform(validateEmail);
  Stream<String> get streamPassword => _passwordController.stream.transform(validatePassword);

  void dispose(){
    _emailController.close();
    _passwordController.close();
  }
}

final blockLogin = BlocLogin();