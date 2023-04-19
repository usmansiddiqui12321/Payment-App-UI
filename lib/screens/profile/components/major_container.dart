import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:payment_app/screens/profile/components/profile_button.dart';

import 'numbers.dart';

class Majorcontainer extends StatelessWidget {
  const Majorcontainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Center(
      child: Container(
        height: size.height * 0.26,
        width: size.width * 0.93,
        decoration: const BoxDecoration(
          color: const Color(0xff1F222A),
          borderRadius: const BorderRadius.all(
            const Radius.circular(
              20,
            ),
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 18.0,
                left: 18,
                right: 8,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const CircleAvatar(
                    radius: 35,
                    backgroundImage: const AssetImage("Assets/user.png"),
                    backgroundColor: const Color(0xff4D5DFA),
                  ),
                  // SizedBox(
                  //   width: 17,
                  // ),

                  Padding(
                    padding: const EdgeInsets.only(left: 17.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const Text(
                              'ELSA',
                              style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 32.0),
                              child: const Icon(
                                Icons.workspace_premium,
                                color: Colors.white,
                                size: 25,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 9,
                        ),
                        const Text(
                          "Level 4 Ace Member",
                          style: TextStyle(
                            color: const Color(
                              0xffB0BEC5,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        const Text(
                          "85%",
                          style: TextStyle(fontSize: 8, color: Colors.grey),
                        ),
                        const SizedBox(
                          height: 3,
                        ),
                        Row(
                          children: [
                            Container(
                              width: 131,
                              height: 5,
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(2),
                                    bottomLeft: Radius.circular(2)),
                                color: const Color(0xff4D5DFA),
                              ),
                            ),
                            Container(
                              width: 17.16,
                              height: 5,
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(2),
                                  bottomRight: const Radius.circular(2),
                                ),
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 28.0),
                    child: GestureDetector(
                      onTap: () => Get.back(),
                      child: const Icon(
                        Icons.cancel_outlined,
                        color: Colors.white,
                        size: 35,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            //yhn sy krna h ab
            Padding(
              padding: const EdgeInsets.only(left: 24.0, top: 10),
              child: IntrinsicHeight(
                child: Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const numbers(
                      t1: "1,208",
                      t2: "Transactions",
                    ),
                    const VerticalDivider(
                      color: Colors.white,
                      thickness: 0.2,
                    ),
                    const numbers(
                      t1: "726",
                      t2: "Points",
                    ),
                    const VerticalDivider(
                      color: Colors.white,
                      thickness: 0.2,
                    ),
                    const numbers(
                      t1: "8",
                      t2: "Rank",
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.01625,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40.0, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const profilebutton(
                      iconn: Icons.person_add_alt, textt: "Edit Profile"),
                  const profilebutton(iconn: Icons.settings, textt: "Settings"),
                  const profilebutton(iconn: Icons.share, textt: "Share"),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}
