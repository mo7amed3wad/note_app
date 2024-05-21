// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:test1/views/widgets/notes_view_widget.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: NotesViewWidget()),
    );
  }
}
