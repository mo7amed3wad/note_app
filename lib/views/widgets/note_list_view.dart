import 'package:flutter/material.dart';
import 'package:test1/views/widgets/custom_note_item.dart';

class NoteListView extends StatelessWidget {
  const NoteListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: 8.0),
          child: NotesItem(),
        );
      },
      itemCount: 4,
    );
  }
}
