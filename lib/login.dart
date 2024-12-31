import 'package:flutter/material.dart';
import 'package:newproject/forgot.dart';

class Loginpage extends StatelessWidget {
  const Loginpage({super.key});

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
                'Welcome back',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Enter your credential to Login ..!',
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
                height: 15,
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
                height: 15,
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    fixedSize: Size(385, 50),
                    backgroundColor: const Color.fromARGB(255, 185, 73, 199)),
                child: Text(
                  'Login',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ForgotScreen()));
                },
                child: Text(
                  'Forgot password?',
                  style: TextStyle(
                      fontSize: 8,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue),
                ),
              ),
              SizedBox(
                height: 60,
              ),
              Row(
                children: [
                  Text(
                    'Don t have an account?',
                    style: TextStyle(fontSize: 8, color: Colors.black),
                  ),
                  Text(
                    'Sign Up',
                    style: TextStyle(fontSize: 8, color: Colors.blue),
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
            ],
          )),
    );
  }
}
