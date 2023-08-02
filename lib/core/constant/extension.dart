import 'package:flutter/material.dart';

extension QueryApp on BuildContext {
  Size get getSize => MediaQuery.of(this).size;
  EdgeInsets get padding => MediaQuery.of(this).padding;

  double get width => getSize.width;
  double get height => getSize.height;

  TextTheme get getTheme => Theme.of(this).textTheme;
}
