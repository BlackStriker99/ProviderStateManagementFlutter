import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../widgets/Appdrawer.dart';
import '../models/UI.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  String text =
      """A mixture between dependency injection (DI) and state management, built with widgets for widgets.

                It purposefully uses widgets for DI/state management instead of dart-only classes like Stream. The reason is, widgets are very simple yet robust and scalable.

                By using widgets for state management, provider can guarantee:""";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Home"),
        ),
        drawer: AppDrawer(),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Consumer<UI>(
                builder: (context, ui, child) {
                  return RichText(
                    text: TextSpan(
                        text: text,
                        style: TextStyle(
                          color: ui.themeColor,
                          fontSize: ui.fontSize,
                        )),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
