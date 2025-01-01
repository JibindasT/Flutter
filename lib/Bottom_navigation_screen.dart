import 'package:flutter/material.dart';
import 'package:newproject/note_screen.dart';
import 'package:newproject/profilepage.dart';

class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({super.key});

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  List pages = [NoteScreen(), Profilepage()];
  int selectedindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: pages[selectedindex],
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.logout), label: 'Logout'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          ],
          onTap: (value) {
            setState(() {
              selectedindex = value;
            });
          },
        ));
  }
}
