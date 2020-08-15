import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:logger_ui/pages/time_line/time_line.dart';


// 配置路由
final router = {
  '/': (context, {arguments}) => TimeLine(),
};

// ignore: missing_return, top_level_function_literal_block
var onGenerateRoute = (RouteSettings settings) {
  final String name = settings.name;
  final Function pageContentBuilder = router[name];
  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      final Route route = MaterialPageRoute(
          builder: (context) =>
              pageContentBuilder(context, arguments: settings.arguments));
      return route;
    } else {
      final Route route =
          MaterialPageRoute(builder: (context) => pageContentBuilder(context));
      return route;
    }
  }
};
