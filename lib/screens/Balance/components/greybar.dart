import 'package:flutter/material.dart';

class greybar extends StatelessWidget {
  const greybar({
    Key? key,
    required this.textt,
  }) : super(key: key);
  final String textt;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: Container(
        height: 43,
        width: size.width * 0.65,
        decoration: BoxDecoration(
          color: Color(0xff343645),
          borderRadius: BorderRadius.all(Radius.circular(15)),
        ),
        child: Center(
          child: Text(
            "Add / Manage Accounts",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}
