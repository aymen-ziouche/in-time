


import 'package:flutter/material.dart';

class MainCardHome extends StatelessWidget {
  const MainCardHome({
    required this.label1,
    required this.value1,
    required this.label2,
    required this.value2,
    required this.label3,
    required this.value3,
    required this.color,
    Key? key,
  }) : super(key: key);

  final String label1;
  final String value1;
  final String label2;
  final String value2;
  final String label3;
  final String value3;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(label1,
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.w400)),
              Text(value1,
                  style: TextStyle(
                      color: color, fontSize: 20, fontWeight: FontWeight.w400)),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label2,
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
              ),
              Text(
                value2,
                style: TextStyle(
                    color: color, fontSize: 20, fontWeight: FontWeight.w400),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label3,
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
              ),
              Text(
                value3,
                style: const TextStyle(
                    color: Colors.green,
                    fontSize: 20,
                    fontWeight: FontWeight.w400),
              ),
            ],
          ),
        ],
      ),
    );
  }
}