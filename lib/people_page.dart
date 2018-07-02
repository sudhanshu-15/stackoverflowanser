import 'package:flutter/material.dart';
import 'package:sample_app/title_inherited_widget.dart';

typedef void StringCallback(String val);

class PeoplePage extends StatefulWidget {
  PeoplePage({Key key, this.titleState, this.callback}) : super(key: key);

  final TitleState titleState;
  final StringCallback callback;

  @override
  _PeoplePageState createState() => _PeoplePageState();
}

class _PeoplePageState extends State<PeoplePage> {
  int _counter = 0;
  TitleState titleState;

  void _increase() {
    setState(() {
      _counter++;
    });
    widget.callback(titleState.title + " " + _counter.toString());
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    titleState = TitleState.of(context);
    print("[People Page] created");
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
