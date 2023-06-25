import 'package:flutter/material.dart';

enum TypeDevice {
  mobile,
  tablet,
  web,
}

Size getSizeApp(BuildContext context) => MediaQuery.of(context).size;

TypeDevice getDeviceType(BuildContext context) {
  final size = MediaQuery.of(context).size.width;

  if (size < 500) {
    return TypeDevice.mobile;
  } else if (size < 1000) {
    return TypeDevice.tablet;
  } else {
    return TypeDevice.web;
  }
}

double getTableDashboardWidth(BuildContext context) {
  switch (getDeviceType(context)) {
    case TypeDevice.mobile:
      return 700.0;

    case TypeDevice.tablet:
      return 700.0;

    case TypeDevice.web:
      return 1250.0;
  }
}
