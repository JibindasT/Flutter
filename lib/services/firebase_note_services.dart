import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:newproject/Bottom_navigation_screen.dart';

Future<void> Addnotes(
    {required String title,
    required String Description,
    required BuildContext context}) async {
  try {
    await FirebaseFirestore.instance.collection('Notes').add({
      'title': title,
      'Description': Description,
      'userId': FirebaseAuth.instance.currentUser?.uid,
    });
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text('Note added successful')));
  } catch (e) {
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(e.toString())));
  }
}
