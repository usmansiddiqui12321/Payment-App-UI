import 'package:flutter/material.dart';

import '../Rewards.dart';
import 'Collectnowbtn.dart';

class collectrewards_container extends StatelessWidget {
  const collectrewards_container({
    Key? key,
    required this.pic,
    required this.t1,
    required this.t2,
    required this.shades,
    required this.smallshades,
  }) : super(key: key);
  final String pic, t1, t2;
  final int shades, smallshades;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.12625,
      width: size.width * 0.85,
      // color: Colors.amberAccent,
      decoration: BoxDecoration(
        color: Color(shades),
        borderRadius: BorderRadius.all(
          Radius.circular(
            20,
          ),
        ),
      ),
      child: Row(
        children: [
          Container(
            height: size.height * 0.12625,
            width: size.width * 0.27777777777,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  pic,
                ),
              ),
              color: Color(smallshades),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(
                  20,
                ),
                bottomLeft: Radius.circular(
                  20,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, top: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  t1,
                  style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontSize: 15,
                      color: Colors.white),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  t2,
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 10,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                collectnowbutton()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
