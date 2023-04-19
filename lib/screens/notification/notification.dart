import 'package:flutter/material.dart';

import 'package:payment_app/constants.dart';

import 'components/notification_heading.dart';

class notifi extends StatefulWidget {
  const notifi({Key? key}) : super(key: key);

  @override
  State<notifi> createState() => _notifiState();
}

class _notifiState extends State<notifi> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff1F222A),
        elevation: 0,
      ),
      backgroundColor: kbackgorundColor,
      body: Column(
        children: [
          const SizedBox(height: 40),
          Center(
            child: Container(
              height: size.height * 0.6,
              width: size.width * 0.9,
              decoration: const BoxDecoration(
                color: Color(0xff1F222A),
                borderRadius: BorderRadius.all(
                  Radius.circular(
                    20,
                  ),
                ),
              ),
              child: Column(
                children: [
                  const Notificationheading(),
                  const SizedBox(
                    height: 18,
                  ),
                  NotificationTiles(
                    size: size,
                    t1: "Recharge Completed",
                    t2: "Your last recharge on 9847229989 of 199 rs has been \nsuccesfully completed.",
                    t3: "May 20  - 12:32 Pm",
                  ),
                  // SizedBox(
                  //   height: 1,
                  // ),
                  NotificationTiles(
                    size: size,
                    t1: "Money Recived",
                    t2: "Your account ***21445 has been recieved an amount \nof Rs 1000 using upi transaction.",
                    t3: "May 20  - 12:45 Pm",
                  ),
                  NotificationTiles(
                    size: size,
                    t1: "Offer Unlocked",
                    t2: "You have an unlockd offer avilable go to offer section \nor tap to view the offer.",
                    t3: "May 20  - 2:45 Pm",
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 20.0),
                        child: Text(
                          "Recent Notifications",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.expand_circle_down_outlined,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class NotificationTiles extends StatelessWidget {
  const NotificationTiles({
    Key? key,
    required this.size,
    required this.t1,
    required this.t2,
    required this.t3,
  }) : super(key: key);

  final Size size;
  final String t1, t2, t3;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: size.height * 0.10,
          width: size.width * 0.7,
          decoration: const BoxDecoration(
            color: Colors.transparent,
          ),
          child: Padding(
            padding: const EdgeInsets.only(
              left: 15.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: Text(
                    t1,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Text(
                    t2,
                    style: const TextStyle(
                      color: Color(0xff9A9B9B),
                      fontSize: 10,
                    ),
                  ),
                ),
                Text(
                  t3,
                  style: const TextStyle(
                    color: Color(0xff9A9B9B),
                    fontSize: 10,
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          width: 15,
        ),
        Container(
          height: size.height * 0.15,
          width: size.width * 0.08,
          decoration: const BoxDecoration(color: Color(0xff1F222A)),
          child: const Padding(
            padding: EdgeInsets.only(bottom: 2.0),
            child: CircleAvatar(
              backgroundColor: Color(0xff343645),
              child: Icon(
                Icons.notifications_outlined,
              ),
            ),
          ),
        )
      ],
    );
  }
}
