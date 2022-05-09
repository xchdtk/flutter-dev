import 'package:flutter/material.dart';
import 'package:navigation/screen/layout/main_layout.dart';

class RouteThreeScreen extends StatelessWidget {
  const RouteThreeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final argrument = ModalRoute.of(context)!.settings.arguments;
    return MainLayout(title: "route three", children: [
      Text(
        'argument: ${argrument}',
        textAlign: TextAlign.center,
      ),
      ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text("pop"))
    ]);
  }
}
