import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:payment_app/constants.dart';
import 'package:payment_app/screens/Home/Home.dart';
import 'package:payment_app/screens/Home/Home_main.dart';

import 'components/balancebox.dart';
import 'components/greybar.dart';

class Balance extends StatefulWidget {
  const Balance({Key? key}) : super(key: key);

  @override
  State<Balance> createState() => _BalanceState();
}

class _BalanceState extends State<Balance> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kbackgorundColor,
      body: Column(
        children: [
          SizedBox(
            height: 15,
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                height: size.height * 0.6,
                width: size.width * 0.93333333333,
                decoration: BoxDecoration(
                  color: Color(0xff1F222A),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          ),
                        ),
                        Column(
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Portfolio value",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Color(0xffFFFFFF),
                              ),
                            ),
                            Text(
                              "\$12757",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 50,
                                  color: Color(0xffB0BEC5),
                                  fontStyle: FontStyle.italic),
                            ),
                            Text(
                              "In 3 Accounts",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Color(0xffB0BEC5),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Icon(
                            Icons.bar_chart_outlined,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            right: 0,
                            top: 8,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              balancebox(
                                bankbalance: "\$5000",
                                bank: "Faderel Bank",
                                balancecolor: 0xffEDFEFF,
                                textcolor: 0xffF4EDFF,
                                boxcolor: 0xff652A5F,
                                accno: "1142524899652",
                              ),
                              SizedBox(
                                width: 18,
                              ),
                              balancebox(
                                bankbalance: "\$4334",
                                textcolor: 0xffFFEDF1,
                                balancecolor: 0xffEDFEFF,
                                boxcolor: 0xff442A65,
                                bank: "State Bank",
                                accno: "1142524899652",
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          // mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: size.width * 0.05654761904,
                            ),
                            balancebox(
                              bankbalance: "\$3423",
                              textcolor: 0xffEDFFF4,
                              balancecolor: 0xffEDFFEF,
                              boxcolor: 0xff2A6550,
                              bank: "Best Bank",
                              accno: "1142521547852",
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 14,
                        ),
                        greybar(textt: "Add / Manage Accounts"),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
