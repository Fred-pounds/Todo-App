import 'package:flutter/material.dart';

class NoteCreate extends StatelessWidget {
  const NoteCreate({super.key});
  //final String noteID;
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Notes'),
      ),
      body: Column(
        children: [
          const SizedBox(
            width: double.infinity,
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Input Notes Title',
              ),
            ),
          ),
          const SizedBox(
            width: double.infinity,
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Input todo description',
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('Save')),
          )
        ],
      ),
    );
  }
}
