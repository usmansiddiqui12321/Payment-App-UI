// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';

class profilebutton extends StatelessWidget {
  const profilebutton({
    Key? key,
    required this.iconn,
    required this.textt,
  }) : super(key: key);
  final IconData iconn;
  final String textt;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.23,
      height: size.height * 0.035,
      decoration: const BoxDecoration(
        color: Color(0xff343645),
        borderRadius: const BorderRadius.all(
          Radius.circular(
            8,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 2),
            child: Text(
              textt,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 11,
              ),
            ),
          ),
          SizedBox(
            width: size.width * 0.01763888888,
          ),
          Icon(
            iconn,
            color: Colors.white,
            size: 20,
          ),
        ],
      ),
    );
  }
}
