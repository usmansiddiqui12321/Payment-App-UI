import 'package:flutter/material.dart';

class purpleButton extends StatelessWidget {
  const purpleButton({
    Key? key,
    required this.Title,
    required this.iconn,
  }) : super(key: key);
  final String Title;
  final IconData iconn;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            height: size.height * 0.075,
            width: size.width * 0.155,
            decoration: BoxDecoration(
              color: Color(0xff242042),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
            ),
            child: Icon(
              // Icons.slow_motion_video
              iconn,
              color: Color(0xffFA4D96),
            ),
          ),
          SizedBox(
            height: 2,
          ),
          Text(
            Title,
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
