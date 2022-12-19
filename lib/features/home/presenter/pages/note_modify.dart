import 'package:flutter/material.dart';

class NoteModify extends StatelessWidget {
  const NoteModify({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Create note')),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: const [
            TextField(
              decoration: InputDecoration(hintText: 'Note Title'),
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(hintText: 'Note Content'),
            ),
            
          ],
        ),
      ),
    );
  }
}
