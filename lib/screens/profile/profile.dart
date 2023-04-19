// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:payment_app/constants.dart';

import 'components/Options_tiles.dart';
import 'components/major_container.dart';
import 'components/numbers.dart';
import 'components/profile_button.dart';
import 'components/second_major.dart';
import 'components/third_major.dart';

class profile extends StatefulWidget {
  const profile({Key? key}) : super(key: key);

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kbackgorundColor,
      body: Column(
        children: [
          SizedBox(
            height: 35,
          ),
          Majorcontainer(),
          SizedBox(
            height: 12,
          ),
          second_major(),
          SizedBox(
            height: 12,
          ),
          thirdmajor()
        ],
      ),
    );
  }
}
