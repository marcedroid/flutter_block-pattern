import 'dart:async';
import 'validators.dart';
import 'package:rxdart/rxdart.dart';

class BlocLogin with Validators{
  final emailController = BehaviorSubject<String>();
  final passwordController = BehaviorSubject<String>();

  //Add Data to Stream
  Function(String) get sinkEmail => emailController.sink.add;
  Function(String) get sinkPassword => passwordController.sink.add;

  //Retrieve Data from Stream
  Stream<String> get streamEmail => emailController.stream.transform(validateEmail);
  Stream<String> get streamPassword => passwordController.stream.transform(validatePassword);
  Stream<bool> get streamSubmit => Observable.combineLatest2(streamEmail, streamPassword, (e,p) => true);

  void dispose(){
    emailController.close();
    passwordController.close();
  }
}

final blockLogin = BlocLogin();