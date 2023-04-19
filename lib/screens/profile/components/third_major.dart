import 'package:flutter/material.dart';

import 'Options_tiles.dart';

class thirdmajor extends StatelessWidget {
  const thirdmajor({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.249,
      width: size.width * 0.93,
      decoration: BoxDecoration(
        color: Color(0xff1F222A),
        borderRadius: BorderRadius.all(
          Radius.circular(
            20,
          ),
        ),
      ),
      child: Column(
        children: [
          SizedBox(
            height: 15,
          ),
          optionstile(
            iconn: Icons.error_outline_outlined,
            textt: "About Us",
          ),
          optionstile(
            iconn: Icons.note_outlined,
            textt: "Terms and Conditions",
          ),
          optionstile(
            iconn: Icons.feedback_outlined,
            textt: "Feedback",
          ),
        ],
      ),
    );
  }
}
