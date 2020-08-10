import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'module_time_box.dart';

class TimeLine extends StatefulWidget {
  @override
  _TimeLineState createState() => _TimeLineState();
}

// 时间线展示(主页面)
class _TimeLineState extends State<TimeLine> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ModuleTimeBox(),
        ModuleTimeBox(),
        ModuleTimeBox(),
        ModuleTimeBox(),
      ],
    );
  }
}
