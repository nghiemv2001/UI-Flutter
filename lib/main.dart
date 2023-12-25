import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        theme: ThemeData(
            primaryColor: Colors.blue,
            visualDensity: VisualDensity.adaptivePlatformDensity),
        debugShowCheckedModeBanner: false,
        home: Day9(),
      ),
    );

class Day9 extends StatefulWidget {
  const Day9({Key? key}) : super(key: key);

  @override
  State<Day9> createState() => _Day9State();
}

class _Day9State extends State<Day9> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
