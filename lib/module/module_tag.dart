// 自定义按钮组件
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ModuleTag extends StatelessWidget {
  final String name;
  final Color color;

  const ModuleTag(this.name, this.color, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(4, 1, 4, 2),
      decoration: BoxDecoration(
          color: color, borderRadius: BorderRadius.all(Radius.circular(3))),
      child: Wrap(
        crossAxisAlignment: WrapCrossAlignment.center,
        children: <Widget>[
          ClipOval(child: Container(width: 9, height: 9, color: Colors.yellow[50])),
          SizedBox(width: 4),
          Text(
            name,
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w200,
            ),
          )
        ],
      ),
    );
  }
}
