import 'package:flutter/material.dart';
import 'package:flutterbackdrop/home_page.dart';
import 'package:flutterbackdrop/twopanels.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: new ThemeData(primarySwatch: Colors.teal),
    home: new BackdropPage(),
  ));
}

class BackdropPage extends StatefulWidget {
  @override
  _BackdropPageState createState() => new _BackdropPageState();
}

class _BackdropPageState extends State<BackdropPage>
    with SingleTickerProviderStateMixin {
  AnimationController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = new AnimationController(
        vsync: this, duration: new Duration(milliseconds: 100), value: 1.0);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controller.dispose();
  }

  bool get isPanelVisible {
    final AnimationStatus status = controller.status;
    return status == AnimationStatus.completed ||
        status == AnimationStatus.forward;
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Backdrop"),
        elevation: 0.0,
        leading: new IconButton(
          onPressed: () {
            controller.fling(velocity: isPanelVisible ? -1.0 : 1.0);
          },
          icon: new AnimatedIcon(
            icon: AnimatedIcons.close_menu,
            progress: controller.view,
          ),
        ),
      ),
      body: new TwoPanels(
        controller: controller,
      ),
    );
  }
}
