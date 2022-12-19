import 'package:flutter/material.dart';
import 'package:todo_list/features/home/presenter/pages/note_modify.dart';
import 'package:todo_list/features/home/utils/models/note_for_listing.dart';

class Notelist extends StatelessWidget {
  Notelist({super.key});

  final notes = [
    new NoteForListing(
        noteID: "1",
        noteTitle: "Note 1",
        createDateTime: DateTime.now(),
        lastEditDateTime: DateTime.now()),
    new NoteForListing(
        noteID: "2",
        noteTitle: "Note 2",
        createDateTime: DateTime.now(),
        lastEditDateTime: DateTime.now()),
    new NoteForListing(
        noteID: "3",
        noteTitle: "Note 3",
        createDateTime: DateTime.now(),
        lastEditDateTime: DateTime.now())
  ];

  String formatDateTime(DateTime dateTime) {
    return '${dateTime.day}/${dateTime.month}/${dateTime.year}';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: const Text("List of notes")),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => const NoteModify(),
          ));
        },
        child: const Icon(Icons.add),
      ),
      body: ListView.separated(
        separatorBuilder: (_, __) => Divider(height: 1, color: Colors.green),
        itemBuilder: (_, index) {
          return ListTile(
            title: Text(notes[index].noteTitle,
                style: TextStyle(color: Theme.of(context).primaryColor)),
            subtitle: Text(
                'Last edited on ${formatDateTime(notes[index].lastEditDateTime)}'),
          );
        },
        itemCount: notes.length,
      ),
    );
  }
}
