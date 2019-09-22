import 'package:flutter/material.dart';

import 'package:stacony/component/stacony_appbar.dart';

class NewsListScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => NewsListScreenState();
}

class NewsListScreenState extends State<NewsListScreen> {
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Stacony.appbar("NEWS"),
      body: Container(
        child: Center(
          child: Text("NEWS"),
        ),
      )
    );
  }
}