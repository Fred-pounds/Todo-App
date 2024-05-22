import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:recipe_app/Screens/note_list.dart';
import 'package:recipe_app/services/services.dart';

void setUpLocator() {
  GetIt.I.registerLazySingleton(() => NoteService());
}

void main() {
  setUpLocator();
  runApp(const NotePage());
}

class NotePage extends StatelessWidget {
  const NotePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: NotesList());
  }
}
