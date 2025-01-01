import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:newproject/Bottom_navigation_screen.dart';
import 'package:newproject/login.dart';
import 'package:newproject/profilepage.dart';

Future<void> signup(
    {required String email,
    required String password,
    required String username,
    required String Confirmpassword,
    required BuildContext context}) async {
  try {
    await FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email, password: password);

    Navigator.push(context,
        MaterialPageRoute(builder: (context) => BottomNavigationScreen()));
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text('Registration successful')));

    print('wwwwwww');
  } catch (e) {
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(e.toString())));
    print('e');
  }
}

Future<void> login(
    {required String email,
    required String password,
    required BuildContext context}) async {
  try {
    await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email, password: password);

    Navigator.push(context,
        MaterialPageRoute(builder: (context) => BottomNavigationScreen()));
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text('Login successful')));
  } catch (e) {
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(e.toString())));
  }
}
