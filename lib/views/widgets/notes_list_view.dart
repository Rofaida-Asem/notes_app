import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custem_note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) {
      return Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: const NoteItem(),
      );
    });
  }
}
