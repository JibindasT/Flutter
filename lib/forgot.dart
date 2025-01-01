// import 'dart:ffi';

import 'package:flutter/material.dart';

class ForgotScreen extends StatelessWidget {
  const ForgotScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white10,
      body: Column(
        children: [
          SizedBox(
            height: 70,
          ),
          CircleAvatar(
            backgroundColor: Colors.purple,
            radius: 80,
            backgroundImage: NetworkImage(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTgqaPZ6HpmxExPx5g_Rxgp8o0vPAdSCZcxMQ&s'),
          ),
          SizedBox(
            height: 45,
          ),
          Text('Reset your password'),
          Divider(
            color: Colors.black,
            indent: 150,
            endIndent: 150,
            thickness: 2,
          ),
          TextField(
              decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide.none,
            ),
            fillColor: Colors.blueGrey,
            filled: true,
            prefixIcon: Icon(Icons.phone),
            labelText: 'Enter your phone number',
          )),
          SizedBox(
            height: 25,
          ),
          ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  fixedSize: Size(385, 50), backgroundColor: Colors.amber),
              child: Text('Send OTP'))
        ],
      ),
    );
  }
}
