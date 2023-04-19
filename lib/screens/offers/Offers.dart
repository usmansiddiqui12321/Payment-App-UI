// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:payment_app/constants.dart';

import 'components/offers_designs.dart';

class offers extends StatefulWidget {
  const offers({Key? key}) : super(key: key);

  @override
  State<offers> createState() => _offersState();
}

class _offersState extends State<offers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kbackgorundColor,
      body: SingleChildScrollView(
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const SizedBox(
              height: 16,
            ),
            const offers_design(
              pic: "Assets/girl.png",
              t1: "Mobile Recharge Offer",
              t2: "Use Code FIRST20",
              t3: "Get 20 % Instant cashback upto Rs 50",
              t4: "on your firs mobile recharge. T&C apply",
              CC: 0xff242042,
            ),
            const offers_design(
              pic: "Assets/girl2.png",
              t1: "Mobile Recharge Offer",
              t2: "Use Code FIRST20",
              t3: "Get 20 % Instant cashback upto Rs 50",
              t4: "on your firs mobile recharge. T&C apply",
              CC: 0xff3B2042,
            ),
            const offers_design(
              pic: "Assets/girl3.png",
              t1: "Mobile Recharge Offer",
              t2: "Use Code FIRST20",
              t3: "Get 20 % Instant cashback upto Rs 50",
              t4: "on your firs mobile recharge. T&C apply",
              CC: 0xff422028,
            ),
            const offers_design(
              pic: "Assets/girl4.png",
              t1: "Mobile Recharge Offer",
              t2: "Use Code FIRST20",
              t3: "Get 20 % Instant cashback upto Rs 50",
              t4: "on your firs mobile recharge. T&C apply",
              CC: 0xff242042,
            ),
            const offers_design(
              pic: "Assets/girl5.png",
              t1: "Mobile Recharge Offer",
              t2: "Use Code FIRST20",
              t3: "Get 20 % Instant cashback upto Rs 50",
              t4: "on your firs mobile recharge. T&C apply",
              CC: 0xff3B2042,
            ),
          ],
        ),
      ),
    );
  }
}
