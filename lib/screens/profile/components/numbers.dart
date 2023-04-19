import 'package:flutter/material.dart';

// ignore: camel_case_types
class numbers extends StatelessWidget {
  const numbers({
    Key? key,
    required this.t1,
    required this.t2,
  }) : super(key: key);
  final String t1, t2;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8.0),
      child: Container(
        child: Column(
          children: [
            Text(
              t1,
              style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff4D5DFA)),
            ),
            Text(
              t2,
              style: TextStyle(
                fontSize: 12,
                color: Color(
                  0xff939FA4,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
