import 'package:flutter/material.dart';
import 'package:newproject/services/firebase_note_services.dart';

class Notesadd extends StatefulWidget {
  const Notesadd({super.key});

  @override
  State<Notesadd> createState() => _NotesaddState();
}

class _NotesaddState extends State<Notesadd> {
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  bool isloading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white24,
      body: Padding(
        padding: const EdgeInsets.all(40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 50,
            ),
            Text('ADD NOTE'),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: titleController,
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                  fillColor: const Color.fromARGB(255, 227, 183, 235),
                  filled: true,
                  prefixIcon: Icon(Icons.text_fields),
                  labelText: 'Title'),
            ),
            SizedBox(
              height: 40,
            ),
            TextField(
              controller: descriptionController,
              minLines: 5,
              maxLines: 90,
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                  fillColor: const Color.fromARGB(255, 227, 183, 235),
                  filled: true,
                  prefixIcon: Icon(Icons.description),
                  labelText: 'Description'),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () async {
                setState(() {
                  isloading = true;
                });
                Addnotes(
                    title: titleController.text,
                    Description: descriptionController.text,
                    context: context);
                setState(() {
                  isloading = false;
                });
              },
              style: ElevatedButton.styleFrom(
                  side: BorderSide(
                      color: const Color.fromARGB(255, 227, 183, 235)),
                  fixedSize: Size(385, 50),
                  backgroundColor: const Color.fromARGB(255, 255, 255, 255)),
              child: isloading
                  ? CircularProgressIndicator()
                  : Text(
                      'ADD',
                      style: TextStyle(
                          fontSize: 18,
                          color: Color.fromARGB(255, 194, 0, 228)),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
