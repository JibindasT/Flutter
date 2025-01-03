import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Profilepage extends StatelessWidget {
  const Profilepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(134, 0, 132, 255),
        body: Column(
          children: [
            SizedBox(
              height: 55,
            ),
            CircleAvatar(
              backgroundColor: Colors.deepPurpleAccent,
              radius: 50,
              backgroundImage: NetworkImage(
                  'https://t3.ftcdn.net/jpg/08/15/05/66/360_F_815056602_JKMZQhQOFkobpSiBK8NuCl8BMPoaFQLu.jpg'),
            ),
            SizedBox(
              height: 35,
            ),
            Text(
              FirebaseAuth.instance.currentUser?.email ?? 'Your Name',
              style: TextStyle(
                  fontSize: 33,
                  fontFamily: 'Allura',
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic),
            ),
            Text('DEVELOPER'),
            Divider(
              color: Colors.amber,
              indent: 100,
              endIndent: 100,
              thickness: 2,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color.fromARGB(255, 255, 255, 255),
              ),
              margin: EdgeInsets.all(25),
              padding: EdgeInsets.all(15),

              // width: 150,
              child: Row(
                children: [
                  Icon(
                    Icons.phone,
                    color: const Color.fromARGB(255, 0, 0, 0),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text('944345234'),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color.fromARGB(255, 255, 255, 255),
              ),
              margin: EdgeInsets.all(25),
              padding: EdgeInsets.all(15),

              // width: 150,
              child: Row(
                children: [
                  Icon(
                    Icons.email,
                    color: Colors.teal,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text('944345234'),
                ],
              ),
            )
          ],
        ));
  }
}



// CircleAvatar(backgroundColor: Colors.deepPurpleAccent,radius: 200,backgroundImage: NetworkImage("https://cdn.pixabay.com/photo/2015/04/23/22/00/new-year-background-736885_1280.jpg"),)