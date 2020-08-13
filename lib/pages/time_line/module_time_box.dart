import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:logger_ui/pages/module/module_tag.dart';

class ModuleTimeBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 当天所有标签(等高布局)
    return IntrinsicHeight(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Expanded(
              // 左侧线条
              child: Container(
                  color: Colors.red[50],
                  width: 100.0,
                  child: Stack(
                      alignment: AlignmentDirectional.center,
                      children: <Widget>[
                        Positioned(
                            // 竖线
                            child: Container(
                                margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                width: 2.5,
                                color: Colors.grey)),
                        Positioned(
                            top: 20,
                            right: 10,
                            // logo
                            child: ClipOval(
                                child: Container(
                                    alignment: Alignment.center,
                                    width: 35,
                                    height: 35,
                                    color: Colors.grey,
                                    child: Icon(Icons.sentiment_neutral)))),
                      ]))),
          Expanded(
              flex: 5,
              // 右侧数据
              child: Container(
                  color: Colors.red[50],
                  padding: EdgeInsets.fromLTRB(3, 25, 0, 10),
                  alignment: Alignment.bottomLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "[2020-08-13]",
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(height: 10),
                      Wrap(
                        spacing: 3,
                        runSpacing: 3,
                        children: <Widget>[
                          ModuleTag("男生生", Colors.grey),
                          ModuleTag("女生", Colors.grey),
                          ModuleTag("开心开心", Colors.grey),
                          ModuleTag("生", Colors.grey),
                          ModuleTag("男生", Colors.grey),
                          ModuleTag("男2", Colors.grey),
                          ModuleTag("开心", Colors.grey),
                          ModuleTag("男生", Colors.grey),
                          ModuleTag("男生", Colors.grey),
                          ModuleTag("男生", Colors.grey),
                        ],
                      ),
                      SizedBox(height: 10),
                      Text(
                          "这是标题是标题是标题是标题是标题是标题是标题是标题是标题是标题是标题是标题是标题是标题是标题是标题是标题是标题题是标题是标题是标题是标题是标题是标题是标题是标题是标题是标题是标题是标题是标题是标题是标题是标题是标题是标题是标题是标题是标题是标题",
                          style:TextStyle(

                          ),maxLines:4,overflow: TextOverflow.ellipsis),
                    ],
                  ))),
        ],
      ),
    );
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
                  color: Colors.grey,
                  child: Text("te"))),
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
}
