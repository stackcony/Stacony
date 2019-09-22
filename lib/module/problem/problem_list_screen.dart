import 'package:flutter/material.dart';

class ProblemListScreen extends StatefulWidget {
  @override 
  State<StatefulWidget> createState() => ProblemListScreenState();
}

class ProblemListScreenState extends State<ProblemListScreen> {
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Problem List'),
      ),
      body: Container(
        child: Center(
          child: Text("Problem List"),
        ),
      ),
    );
  }
}