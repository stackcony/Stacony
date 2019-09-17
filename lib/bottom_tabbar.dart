import 'package:flutter/material.dart';

class BottomNavBarWidget extends StatefulWidget {
  @override 
  State<StatefulWidget> createState() => BottomNavBarWidgetState();
}

class BottomNavBarTabItem {
  // 对应页面
  StatefulWidget screen;
  // title
  Text title;
  // icon
  Icon icon;

  BottomNavBarTabItem(this.screen, this.title, this.icon);
}

class BottomNavBarWidgetState extends State<BottomNavBarWidget> {
  final _bottomNavigationColor = Colors.blue;
  int _currentIndex = 0;
  List<BottomNavBarTabItem> datas = List();

  @override 
  void initState() {
    datas
      ..add(BottomNavBarTabItem(
        ProblemScreen(),
        Text('Home'),
        Icon(Icons.home),
      ))
      ..add(BottomNavBarTabItem(
        ProblemScreen(),
        Text('My'),
        Icon(Icons.people),
      ))
      ..add(BottomNavBarTabItem(
        ProblemScreen(),
        Text('Setting'),
        Icon(Icons.settings),
      ));
    
    super.initState();
  }

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  BottomNavigationBarItem _buildItem(BottomNavBarTabItem tabItem) {
    return BottomNavigationBarItem(
      title: tabItem.title,
      icon: tabItem.icon,
    );
  }

  List<BottomNavigationBarItem> _datas() {
    List<BottomNavigationBarItem> items = List();
    for (BottomNavBarTabItem item in datas) {
      items.add(_buildItem(item));
    }
    return items;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: datas[_currentIndex].screen,
      bottomNavigationBar: BottomNavigationBar(
        items: _datas(),
        currentIndex: _currentIndex,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}