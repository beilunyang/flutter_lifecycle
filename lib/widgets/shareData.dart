import 'package:flutter/material.dart';

class ShareDataWidget extends InheritedWidget {

  final int data;

  ShareDataWidget({
    this.data,
    Widget child
  }) : super(child: child);

  static ShareDataWidget of(BuildContext context) {
    return context.inheritFromWidgetOfExactType(ShareDataWidget);
  }

  @override
  bool updateShouldNotify(ShareDataWidget oldWidget) {
    return oldWidget.data != data;
  }

}