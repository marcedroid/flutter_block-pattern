import 'dart:async';
import 'package:bloc_pattern/src/regex/regex_rules.dart';

class Validators {
  final validateEmail = StreamTransformer<String, String>.fromHandlers(
      handleData: (email, sink) {
        if (regExpEmail.hasMatch(email)) {
          sink.add(email);
        } else {
          sink.addError("Email incorrecto");
        }
      }
  );

  final validatePassword = StreamTransformer<String, String>.fromHandlers(
      handleData: (password, sink) {
        if (password.length > 3) {
          sink.add(password);
        } else {
          sink.addError("Mínimo 4 caracteres");
        }
      }
  );
}