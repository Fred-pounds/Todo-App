import 'package:flutter/material.dart';

class NoteDelete extends StatelessWidget {
  const NoteDelete({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Warning'),
      content: const Text('Are you Sure?'),
      actions: [
        TextButton(
            onPressed: () {
              Navigator.of(context).pop(true);
            },
            child: const Text('Yes')),
        TextButton(onPressed: () {
            Navigator.of(context).pop(false);
        }, child: const Text('No'))
      ],
    );
  }
}
