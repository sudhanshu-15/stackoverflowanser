import 'package:flutter/material.dart';
import 'package:sample_app/title_inherited_widget.dart';

class PeoplePage extends StatefulWidget {
  PeoplePage({
    Key key,
  }) : super(key: key);

  @override
  _PeoplePageState createState() => _PeoplePageState();
}

class _PeoplePageState extends State<PeoplePage> {
  int _counter = 0;
  TitleState titleState;

  void _increase() {
    setState(() {
      _counter++;
      titleState.title = (titleState.title + " " + _counter.toString());
    });
  }

  @override
  Widget build(BuildContext context) {
    titleState = TitleState.of(context);
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Center(child: Text(_counter.toString())),
          Center(
            child: Container(
              child:
                  RaisedButton(child: Text("Press Me"), onPressed: _increase),
            ),
          ),
        ],
      ),
    );
  }
}
