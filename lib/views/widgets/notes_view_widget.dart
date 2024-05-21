// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class NotesViewWidget extends StatelessWidget {
  const NotesViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: ListView(
        children: const [
          SizedBox(
            height: 10,
          ),
          CostumAppbar(),
          SizedBox(
            height: 10,
          ),
          NotesItem(),
          SizedBox(
            height: 10,
          ),
          NotesItem(),
          SizedBox(
            height: 10,
          ),
          NotesItem(),
          SizedBox(
            height: 10,
          ),
          NotesItem(),
          SizedBox(
            height: 10,
          ),
          NotesItem(),
          SizedBox(
            height: 10,
          ),
          NotesItem(),
        ],
      ),
    );
  }
}

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

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.05),
          borderRadius: const BorderRadius.all(Radius.circular(20))),
      height: 50,
      width: 50,
      child: const Icon(
        Icons.search,
        size: 35,
      ),
    );
  }
}

class NotesItem extends StatelessWidget {
  const NotesItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 24, bottom: 24, right: 15),
      decoration: BoxDecoration(
        color: const Color(0xffFFCC80),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          ListTile(
            title: const Text(
              "Flutter tips",
              style: TextStyle(color: Colors.black, fontSize: 26),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 12),
              child: Text(
                "Build your carrer with Mohamed awad",
                style: TextStyle(
                    color: Colors.black.withOpacity(0.3), fontSize: 16),
              ),
            ),
            trailing: Padding(
              padding: const EdgeInsets.only(
                bottom: 50,
              ),
              child: const Icon(
                Icons.delete,
                color: Colors.red,
                size: 35,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "Feb 5,2024",
                style: TextStyle(
                    color: Colors.black.withOpacity(0.3), fontSize: 16),
              )
            ],
          )
        ],
      ),
    );
  }
}
