import 'package:flutter/material.dart';
import 'package:recipe_app/Screens/note_create.dart';
import 'package:recipe_app/Screens/notes.delete.dart';
import 'package:recipe_app/models/notes_for_listing.dart';

class NotesList extends StatelessWidget {
  NotesList({super.key});
  final List notes = [
    NotesForListing(
        noteID: '1',
        createDateTime: DateTime.now(),
        latestEditDateTime: DateTime.now(),
        noteTitle: 'Note 1'),
    NotesForListing(
        noteID: '2',
        createDateTime: DateTime.now(),
        latestEditDateTime: DateTime.now(),
        noteTitle: 'Note 2'),
    NotesForListing(
        noteID: '3',
        createDateTime: DateTime.now(),
        latestEditDateTime: DateTime.now(),
        noteTitle: 'Note 3'),
    NotesForListing(
        noteID: '4',
        createDateTime: DateTime.now(),
        latestEditDateTime: DateTime.now(),
        noteTitle: 'Note 4'),
  ];

  String formatDateTime(DateTime dateTime) {
    return '${dateTime.day}/${dateTime.month}/${dateTime.year}';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notes Made'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const NoteCreate()));
        },
        child: const Icon(Icons.add),
      ),
      body: ListView.separated(
        separatorBuilder: (_, context) => const Divider(
          color: Colors.black,
        ),
        itemCount: notes.length,
        itemBuilder: (_, index) => Dismissible(
          key: ValueKey(notes[index].noteID),
          direction: DismissDirection.startToEnd,
          onDismissed: (direction) {},
          confirmDismiss: (direction) async {
            final result = await showDialog(
                context: context, builder: (_) => const NoteDelete());
            // print(result);
            return result;
          },
          background: Container(
            color: Colors.red,
            padding: const EdgeInsets.only(left: 16),
            alignment: Alignment.centerLeft,
            child: const Icon(
              Icons.delete,
              color: Colors.white,
            ),
          ),
          child: ListTile(
            title: Text(notes[index].noteTitle),
            subtitle: Text(
                'Last Edited on ${formatDateTime(notes[index].latestEditDateTime)}'),
            trailing: const Icon(Icons.chevron_right),
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const NoteCreate(),
                )),
          ),
        ),
      ),
    );
  }
}
