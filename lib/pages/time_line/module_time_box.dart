import 'package:flutter/cupertino.dart';
import 'package:logger_ui/mock/fixData.dart';

class ModuleTimeBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(height: 100, color: FixDate.randomColor());
  }
}
