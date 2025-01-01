import 'package:flutter/material.dart';
import 'package:newproject/forgot.dart';
import 'package:newproject/profilepage.dart';
import 'package:newproject/services/firbase_auth_service.dart';
import 'package:newproject/signup.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

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
                height: 50,
              ),
              TextField(
                controller: emailController,
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
                height: 15,
              ),
              ElevatedButton(
                onPressed: () async {
                  setState(() {
                    isloading = true;
                  });
                  await login(
                      email: emailController.text,
                      password: passwordController.text,
                      context: context);

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
                        'Sign In',
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
              Padding(
                padding: const EdgeInsets.only(left: 110),
                child: Row(
                  children: [
                    Text(
                      'Don t have an account?',
                      style: TextStyle(fontSize: 8, color: Colors.black),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Signup()));
                      },
                      child: Text(
                        'Sign Up',
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
          )),
    );
  }
}
