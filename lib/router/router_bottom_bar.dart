import 'package:flutter/material.dart';
import 'package:logger_ui/pages/time_line/time_line.dart';

class MyHomePage extends StatefulWidget {
  final index;

  MyHomePage({Key key, this.index = 0}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState(index);
}

class _MyHomePageState extends State<MyHomePage> {
  int currentIndex = 0;

  _MyHomePageState(index) {
    this.currentIndex = index;
  }

  // 底部导航栏设置
  List _pageList = [
    TimeLine(), // 时间轴
    Text("kjkj"),
    Text("kjkj"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('TimeLogger')),
        body: _pageList[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            iconSize: 23,
            unselectedFontSize: 10,
            selectedFontSize: 12,
            currentIndex: currentIndex,
            onTap: (int index) {
              setState(() {
                this.currentIndex = index;
              });
            },

            // 底部导航图标设置
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.timer), title: Text("时间轴")),
              BottomNavigationBarItem(
                  icon: Icon(Icons.functions), title: Text("统计")),
              BottomNavigationBarItem(
                  icon: Icon(Icons.home), title: Text("我的")),
            ]));
  }
}
