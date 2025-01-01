import 'package:flutter/material.dart';
import 'package:newproject/forgot.dart';
import 'package:newproject/login.dart';
import 'package:newproject/services/firbase_auth_service.dart';

// ignore: camel_case_types
class Signup extends StatefulWidget {
  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  TextEditingController usernameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController confirmController = TextEditingController();

  bool isloading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: Padding(
        padding: const EdgeInsets.all(40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 100,
            ),
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
              height: 50,
            ),
            TextField(
              controller: usernameController,
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
              controller: emailController,
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
              controller: passwordController,
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
              controller: confirmController,
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
              onPressed: () async {
                setState(() {
                  isloading = true;
                });
                await signup(
                    username: usernameController.text,
                    email: emailController.text,
                    password: passwordController.text,
                    context: context,
                    Confirmpassword: confirmController.text);
                setState(() {
                  isloading = false;
                });
              },
              style: ElevatedButton.styleFrom(
                  fixedSize: Size(385, 50),
                  backgroundColor: const Color.fromARGB(255, 185, 73, 199)),
              child: isloading
                  ? CircularProgressIndicator()
                  : Text(
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
                  side: BorderSide(color: Colors.purple),
                  fixedSize: Size(385, 50),
                  backgroundColor: const Color.fromARGB(255, 255, 255, 255)),
              child: Text(
                'Sign in with Google',
                style: TextStyle(
                    fontSize: 18, color: Color.fromARGB(255, 185, 73, 199)),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 110),
              child: Row(
                children: [
                  Text(
                    'already have an account?',
                    style: TextStyle(fontSize: 8, color: Colors.black),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context,
                          MaterialPageRoute(builder: (context) => Loginpage()));
                    },
                    child: Text(
                      'Sign In',
                      style: TextStyle(fontSize: 8, color: Colors.blue),
                    ),
                  )

                  // Text(
                  //   'Dont have an account?' 'SignUp',
                  //   style: TextStyle(
                  //       fontSize: 8,
                  //       fontWeight: FontWeight.bold,
                  //       color: const Color.fromARGB(255, 0, 0, 0)),
                  // )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
