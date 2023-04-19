// ignore: file_names
// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:payment_app/screens/notification/notification.dart';
import 'package:payment_app/screens/profile/profile.dart';

import '../../components/phone_text_field.dart';

class search extends StatelessWidget {
  const search({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Row(
          children: [
            GestureDetector(
              onTap: () => Get.to(const profile()),
              child: const CircleAvatar(
                backgroundImage: AssetImage("Assets/user.png"),
              ),
            ),
            SizedBox(width: size.width * 0.023),
            const Phone_text(backgroundColor: 0xff343645),
            IconButton(
              onPressed: () {
                Get.to(const notifi());
              },
              icon: const Icon(
                Icons.notifications,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
