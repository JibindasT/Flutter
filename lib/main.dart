import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:newproject/firebase_options.dart';
import 'package:newproject/login.dart';
import 'package:newproject/signup.dart';

Future<void> main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MaterialApp(
    home: Loginpage(),
  ));
}
