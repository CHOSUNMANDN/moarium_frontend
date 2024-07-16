import 'package:flutter/material.dart';

import 'package:moarium_frontend/common/component/molecule/default_app_bar.dart';
import 'package:moarium_frontend/common/const/color.dart';

class DefaultLayout extends StatelessWidget {
  final Widget leftChild;
  final Widget centerChild;
  final List<Widget> rightChildren;
  final Widget body;

  const DefaultLayout({
    Key? key,
    this.leftChild = const SizedBox.shrink(),
    this.centerChild = const SizedBox.shrink(),
    this.rightChildren = const [],
    required this.body,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BACKGROUND_COLOR,
      appBar: DefaultAppBar(
        leftChild: leftChild,
        centerChild: centerChild,
        rightChildren: rightChildren,
      ),
      body: body,
    );
  }
}
