import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

const List<Condition> isDesktop = [Condition.largerThan(name: TABLET)];

const List<Condition> isMobileTablet = [
  Condition.smallerThan(
    name: DESKTOP,
  ),
];
const List<Condition> isMobileTabletS = [
  Condition.smallerThan(
    name: DESKTOP,
    value: EdgeInsets.fromLTRB(130, 18, 130, 18),
  ),
];
const List<Condition> isMobileTabletButt = [
  Condition.smallerThan(
    name: DESKTOP,
    value: EdgeInsets.fromLTRB(190, 18, 190, 18),
  ),
];
const List<Condition> isMobileTabletField = [
  Condition.smallerThan(
    name: DESKTOP,
    value: 410,
  ),
];
const List<Condition> isMobileTabletSctratch = [
  Condition.smallerThan(
    name: DESKTOP,
    value: 450,
  ),
];

bool isSmallerThanDesktop(BuildContext context) {
  return ResponsiveWrapper.of(context).isSmallerThan(DESKTOP);
}
