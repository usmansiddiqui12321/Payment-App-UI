import 'package:flutter/material.dart';

class optionstile extends StatelessWidget {
  const optionstile({
    Key? key,
    required this.iconn,
    required this.textt,
  }) : super(key: key);
  final IconData iconn;
  final String textt;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: size.width * 0.04166666666,
              ),
              Icon(
                iconn,
                color: Colors.white,
              ),
              SizedBox(
                width: size.width * 0.105555555,
              ),
              Container(
                height: size.height * 0.025,
                width: size.width * 0.62,
                child: Text(
                  textt,
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
              ),
              Icon(
                Icons.navigate_next_outlined,
                color: Colors.white,
                size: 30,
              ),
            ],
          ),
        ),
        SizedBox(
          height: size.height * 0.037,
        )
      ],
    );
  }
}
