// ignore: file_names
import 'package:flutter/material.dart';
import 'package:payment_app/constants.dart';
import 'package:payment_app/screens/Balance/Balance.dart';
import 'package:payment_app/screens/Home/Home_main.dart';
import 'package:payment_app/screens/offers/Offers.dart';
import 'package:payment_app/screens/Rewards/Rewards.dart';

import 'Components/Search.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 4,
      child: Scaffold(
        backgroundColor: kbackgorundColor,
        appBar: AppBar(
          toolbarHeight: 90,
          leading: const SizedBox(),
          backgroundColor: const Color(0xff1D1F27),
          elevation: 0,
          actions: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                SizedBox(
                  height: 25,
                ),
                PreferredSize(
                  preferredSize: Size(50, 90),
                  child: search(),
                ),
              ],
            ),
          ],
          bottom: const TabBar(
            tabs: [
              Tab(
                child: Text("Home"),
              ),
              Tab(
                child: Text("Balance"),
              ),
              Tab(
                child: Text(
                  "Offers",
                ),
              ),
              Tab(
                child: Text(
                  "Rewards",
                ),
              ),
            ],
            indicatorColor: Colors.white,
            indicator: UnderlineTabIndicator(
              insets: EdgeInsets.symmetric(
                horizontal: 16.0,
              ),
            ),
          ),
        ),
        body: const TabBarView(
          children: [
            Home_main(),
            Balance(),
            offers(),
            rewards(),
          ],
        ),
      ),
    );
  }
}
