import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ModuleTimeBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 当天所有标签
    return Container(
        height: 120,
        color: Colors.red[100],
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              // 左边部分
              Expanded(
                  flex: 1,
                  child: Container(
                      height: 120,
                      child:
                          // 填写固定的颜色和logo
                          _getLeftData(Colors.grey,
                              Icon(Icons.sentiment_dissatisfied)))),
              // 右边部分
              Expanded(flex: 5, child: _getRightData()),
            ]));
  }

  // 左侧线条
  Widget _getLeftData(Color color, Icon icon) {
    return Container(
        padding: EdgeInsets.all(1),
        child: Stack(alignment: AlignmentDirectional.center, children: <Widget>[
          Positioned(
              // 竖线
              child: Container(
                  margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                  width: 2.5,
                  color: Colors.grey)),
          Positioned(
              top: 20,
              right: icon != null ? 10 : 19,
              // logo
              child: icon != null
                  // 如果有logo的话,添加logo
                  ? ClipOval(
                      child: Container(
                          alignment: Alignment.center,
                          width: 35,
                          height: 35,
                          color: color,
                          child: icon))
                  // 如果没有logo的话,使用小点点
                  : ClipOval(
                      child:
                          Container(width: 20, height: 20, color: Colors.red))),
        ]));
  }

  // 右侧数据
  Widget _getRightData() {
    return Container(height: 120, color: Colors.green, child: Text("右侧数据"));
  }
}
