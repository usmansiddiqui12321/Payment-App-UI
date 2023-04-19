import 'package:flutter/material.dart';

class scratchbox extends StatelessWidget {
  const scratchbox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        Container(
          height: size.height * 0.125,
          width: size.width * 0.269,
          decoration: BoxDecoration(
            color: Color(0xff242042),
            borderRadius: BorderRadius.all(
              Radius.circular(
                20,
              ),
            ),
          ),
        ),
        SizedBox(
          width: 12,
        )
      ],
    );
  }
}
