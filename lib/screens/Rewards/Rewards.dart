import 'package:flutter/material.dart';
import 'package:payment_app/constants.dart';
import 'dart:ui';
import '../Balance/Balance.dart';
import '../Balance/components/greybar.dart';

import 'components/CollectRewardsContainer.dart';
import 'components/rewards_headings.dart';
import 'components/scratchbox.dart';

class rewards extends StatefulWidget {
  const rewards({Key? key}) : super(key: key);

  @override
  State<rewards> createState() => _rewardsState();
}

class _rewardsState extends State<rewards> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: kbackgorundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 16,
            ),
            Center(
              child: Container(
                height: 182,
                width: 336,
                decoration: BoxDecoration(
                  color: Color(0xff1F222A),
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      10,
                    ),
                  ),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 18,
                    ),
                    Text(
                      "CashBacks Earned",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 11,
                    ),
                    Text(
                      "\$508",
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Color(0xffB0BEC5),
                      ),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      "\$85+ this month",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Color(0xffAAAAAA),
                      ),
                    ),
                    SizedBox(
                      height: 14,
                    ),
                    greybar(textt: "View your cashback history")
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            headings(
              txt: "Scrachcards Won",
            ),
            SingleChildScrollView(
      scrollDirection: Axis.horizontal,

              child: Row(
                children: [
                  SizedBox(
                    width: size.width * 0.0777,
                  ),
                  scratchbox(),
                  scratchbox(),
                  scratchbox(),
                  scratchbox()
                ],
              ),
            ),
            headings(txt: "Collect Rewards"),
            collectrewards_container(
                pic: "Assets/collect1.png",
                t1: "Flat 50 off On food Delivery",
                t2: "On orders above 99 on Swaggy, Somato",
                shades: 0xff242042,
                smallshades: 0xff242042),
            SizedBox(
              height: 15,
            ),
            collectrewards_container(
              pic: "Assets/collect2.png",
              t1: "20% Cashback On Amazon",
              t2: "Up to Rs 150 Minimum Order 1000",
              shades: 0xff422038,
              smallshades: 0xff422038,
            ),
            SizedBox(
              height: 15,
            ),
            collectrewards_container(
              pic: "Assets/girl3.png",
              t1: "50% cashback on foodpanda",
              t2: "Up to Rs 500 Minimum Order 1500",
              shades: 0xff422028,
              smallshades: 0xff422028,
            ),
            SizedBox(
              height: 15,
            )
          ],
        ),
      ),
    );
  }
}
