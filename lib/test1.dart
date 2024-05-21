// ignore_for_file: prefer_const_constructors, prefer_final_fields, sort_child_properties_last

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'TASBIHAA'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter1 = 33;
  int _dwra1 = 0;
  int _counter2 = 33;
  int _dwra2 = 0;
  int _counter3 = 33;
  int _dwra3 = 0;

  Widget tasbiha(
      {required String title,
      required int counter,
      required int dawra,
      required Function onTap}) {
    return Column(
      children: [
        Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
        GestureDetector(
            child: CircleAvatar(
              backgroundColor: Colors.amber,
              radius: 50,
              child: (Text(
                counter.toString(),
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              )),
            ),
            onTap: onTap()),
        Text(
          dawra.toString(),
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(
          widget.title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            //    tasbiha(title: "سبحان الله", counter: _counter1, dawra: _dwra1,),
            //  tasbiha(title: " الحمد لله", counter: _counter2, dawra: _dwra2),
            //tasbiha(title: "الله أكبر", counter: _counter3, dawra: _dwra3)
          ],
        ),
      ),
    );
  }
}
