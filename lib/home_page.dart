import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Padding(
        padding: new EdgeInsets.all(10.0),
        child: new IntrinsicHeight(
          child: new Container(
            color: Colors.grey,
            padding: new EdgeInsets.all(4.0),
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                new Container(
                  padding: new EdgeInsets.all(5.0),
                  margin: new EdgeInsets.only(right: 5.0),
                  color: Colors.grey[200],
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      new Text('dynamic height'),
                      new Text('dynamic width'),
                      new Text('fat'),
                      new Text('super fat'),
                    ],
                  ),
                ),
                new Container(
                  padding: new EdgeInsets.all(5.0),
                  color: Colors.grey[200],
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      new Text('dynamic width'),
                      new Text('dynamic height'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
