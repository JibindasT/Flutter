import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:newproject/firebase_options.dart';
import 'package:newproject/login.dart';
import 'package:newproject/note_screen.dart';
import 'package:newproject/notesadd.dart';
import 'package:newproject/profilepage.dart';
import 'package:newproject/signup.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MaterialApp(
    home: Profilepage(),
  ));
}
