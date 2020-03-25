import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../widgets/Appdrawer.dart';
import '../models/UI.dart';

class Setting extends StatelessWidget {
  double sliderValue = 10;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Setting"),
        ),
        drawer: AppDrawer(),
        body: Container(
          child: Consumer<UI>(
            builder: (context, ui, child) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Font Size  ${ui.fontSize.round()}",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 25),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 200,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(8.0, 20, 8.0, 8.0),
                      child: Card(
                        clipBehavior: Clip.hardEdge,
                        color: Colors.white,
                        elevation: 10,
                        child: Slider.adaptive(
                            label: "Font Size",
                            activeColor: Colors.purple,
                            inactiveColor: Colors.grey,
                            value: ui.sliderFontSize,
                            min: 10,
                            max: 50,
                            onChanged: (newValue) {
                              ui.fontSize = newValue;
                            }),
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
