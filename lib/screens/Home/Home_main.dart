// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:payment_app/constants.dart';
import 'package:payment_app/screens/Recieve%20Money/RecieveMoney.dart';

import 'Components/Button_main_design.dart';
import 'Components/RecentUser.dart';
import 'Components/Ticketbooking.dart';
import 'Components/purpleBtn.dart';
import 'Components/textwithmorebtn.dart';

class Home_main extends StatefulWidget {
  const Home_main({Key? key}) : super(key: key);

  @override
  State<Home_main> createState() => _Home_mainState();
}

class _Home_mainState extends State<Home_main> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return InkWell(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        floatingActionButton: const fab(),
        backgroundColor: kbackgorundColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              const Textwithmorebtn(Txt: "Money Transfer"),
              const SizedBox(
                height: 20,
              ),
              const ButtonDesign(
                sc1: 0xff4D3473,
                sc2: 0xff277360,
                m1: 0xff5B2E62,
                m2: 0xff2E624C,
                mt1: "Scan QR Code",
                I1: Icons.qr_code_2,
                mt2: "Send to Contact",
                I2: Icons.person_add,
              ),
              const SizedBox(
                height: 7,
              ),
              const ButtonDesign(
                  sc1: 0xff617A27,
                  sc2: 0xff73274E,
                  m1: 0xff5E622E,
                  m2: 0xff622E3A,
                  mt1: "Send to Bank",
                  mt2: "Self Transfer",
                  I1: Icons.house,
                  I2: Icons.recycling),
              const Textwithmorebtn(Txt: "Recharge & Bill payment"),
              const SizedBox(
                height: 7,
              ),
              const ButtonDesign(
                  sc1: 0xff33734A,
                  sc2: 0xff7C375A,
                  m1: 0xff32652A,
                  m2: 0xff652A5F,
                  mt1: "Mobile Recharge",
                  mt2: "Electricity Bill",
                  I1: Icons.mobile_friendly,
                  I2: Icons.sunny),
              const SizedBox(
                height: 7,
              ),
              const ButtonDesign(
                  sc1: 0xff614A2D,
                  sc2: 0xff4A3F6B,
                  m1: 0xff652A2A,
                  m2: 0xff242042,
                  mt1: "DTH Recharge",
                  mt2: "Postpaid Bill",
                  I1: Icons.play_circle,
                  I2: Icons.post_add),
              const Textwithmorebtn(Txt: "Ticket Booking"),
              const Ticketbooking(),
              const Textwithmorebtn(Txt: "More Services"),
              Row(
                children: [
                  const purpleButton(
                    Title: "Invest",
                    iconn: Icons.bar_chart_sharp,
                  ),
                  const purpleButton(
                    Title: "Loan",
                    iconn: Icons.attach_money_sharp,
                  ),
                  const purpleButton(
                    Title: "Insurance",
                    iconn: Icons.monitor_heart_outlined,
                  ),
                  const purpleButton(
                    Title: "FastTag",
                    iconn: Icons.no_crash_outlined,
                  ),
                ],
              ),
              const Textwithmorebtn(
                Txt: "Recent Transactions",
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    const RecentUsers(
                      Img: "Assets/p1.png",
                      Username: "User1",
                    ),
                    const RecentUsers(
                      Img: "Assets/p2.png",
                      Username: "User2",
                    ),
                    const RecentUsers(
                      Img: "Assets/p3.png",
                      Username: "User3",
                    ),
                    const RecentUsers(
                      Img: "Assets/p4.png",
                      Username: "User4",
                    ),
                    const RecentUsers(
                      Img: "Assets/p5.png",
                      Username: "User5",
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class fab extends StatelessWidget {
  const fab({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
        label: const Text("Recieve Money"),
        backgroundColor: const Color(0xff08348A),
        onPressed: () {
          Get.to(const RecieveMoney());
        });
  }
}
