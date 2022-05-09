import 'package:flutter/material.dart';
import 'package:navigation/screen/layout/main_layout.dart';
import 'package:navigation/screen/route_one_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: MainLayout(title: "home_screen", children: [
        ElevatedButton(
            onPressed: () {
              Navigator.of(context).canPop();
            },
            child: Text("canPop")),
        ElevatedButton(
            onPressed: () {
              Navigator.of(context).maybePop();
            },
            child: Text("maybePop")),
        ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text("Pop")),
        ElevatedButton(
            onPressed: () async {
              final result = await Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) =>
                      RouteOneScreen(number: 123)));

              print(result);
            },
            child: Text('push'))
      ]),
    );
  }
}
