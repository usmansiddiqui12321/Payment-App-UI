import 'package:flutter/material.dart';

class collectnowbutton extends StatelessWidget {
  const collectnowbutton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 28,
      width: 101,
      decoration: BoxDecoration(
        color: Color(0xffFA4D96)
            .withOpacity(0.15), //opacity 0-1 k bech mn hogi srf

        borderRadius: BorderRadius.all(
          Radius.circular(
            8,
          ),
        ),
      ),
      child: Center(
        child: Text(
          "Collect Now",
          style: TextStyle(
            color: Color(
              0xffFA4D96,
            ),
          ),
        ),
      ),
    );
  }
}
