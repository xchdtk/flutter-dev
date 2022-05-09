import 'package:flutter/material.dart';
import 'package:random_number_generator/constant/color.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  double maxNumber = 10000;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: PRIMARY_COLOR,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                _Body(maxNumber: maxNumber),
              ],
            ),
          ),
        ));
  }
}

class _Body extends StatelessWidget {
  final double maxNumber;
  const _Body({required this.maxNumber, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: maxNumber
            .toInt()
            .toString()
            .split('')
            .map((e) => Image.asset(
                  'asset/img/$e.png',
                  width: 50.0,
                  height: 70.0,
                ))
            .toList(),
      ),
    );
  }
}

class _Footer extends StatelessWidget {
  final ValueChanged<double>? onSliderChanged;
  final double maxNumber;
  const _Footer({ required this.onSliderChanged, required this.maxNumber, Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Slider(
                    value: maxNumber,
                    min: 10000,
                    max: 100000,
                    onChanged: 
                    }),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop(maxNumber.toInt());
                    },
                    style: ElevatedButton.styleFrom(primary: RED_COLOR),
                    child: Text("저장 !!!"))
  }
      ],);
};