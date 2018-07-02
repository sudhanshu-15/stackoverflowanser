import 'package:flutter/material.dart';

class TitleState extends InheritedWidget {
  TitleState({Key key, this.title, Widget child})
      : super(key: key, child: child);

  String title;

  static TitleState of(BuildContext context) {
    return context.inheritFromWidgetOfExactType(TitleState) as TitleState;
  }

  @override
  bool updateShouldNotify(TitleState oldTitle) => true;
}
