// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:test1/views/widgets/custom_search_icon.dart';

class CostumAppbar extends StatelessWidget {
  const CostumAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Notes",
          style: TextStyle(fontSize: 30),
        ),
        Spacer(),
        CustomSearchIcon()
      ],
    );
  }
}
