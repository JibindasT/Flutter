import 'package:flutter/material.dart';
import 'package:newproject/forgot.dart';

// ignore: camel_case_types
class signup extends StatelessWidget {
  const signup({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: Padding(
        padding: const EdgeInsets.all(40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Sign Up',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Create your account',
              style: TextStyle(
                fontSize: 8,
              ),
            ),
            SizedBox(
              height: 80,
            ),
            TextField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
                fillColor: const Color.fromARGB(255, 240, 211, 246),
                filled: true,
                prefixIcon: Icon(Icons.person),
                labelText: 'Username',
              ),
            ),
            SizedBox(
              height: 25,
            ),
            TextField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none),
                fillColor: const Color.fromARGB(255, 240, 211, 246),
                filled: true,
                prefixIcon: Icon(Icons.email),
                labelText: 'Email',
              ),
            ),
            SizedBox(
              height: 25,
            ),
            TextField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none),
                fillColor: const Color.fromARGB(255, 240, 211, 246),
                filled: true,
                prefixIcon: Icon(Icons.password),
                labelText: 'Password',
              ),
            ),
            SizedBox(
              height: 25,
            ),
            TextField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none),
                fillColor: const Color.fromARGB(255, 240, 211, 246),
                filled: true,
                prefixIcon: Icon(Icons.password),
                labelText: 'Confirm Password',
              ),
            ),
            SizedBox(
              height: 25,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  fixedSize: Size(385, 50),
                  backgroundColor: const Color.fromARGB(255, 185, 73, 199)),
              child: Text(
                'Sign Up',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              'Or',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            SizedBox(
              height: 25,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  fixedSize: Size(385, 50),
                  backgroundColor: const Color.fromARGB(255, 255, 255, 255)),
              child: Text(
                'Sign in with Google',
                style: TextStyle(
                    fontSize: 18, color: Color.fromARGB(255, 185, 73, 199)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
