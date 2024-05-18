import 'package:flutter/material.dart';
import 'package:recipe_app/Screens/note_list.dart';

void main() {
  runApp(const NotePage());
}

class NotePage extends StatelessWidget {
  const NotePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: NotesList()
    );
  }
}
