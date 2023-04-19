import 'package:flutter/material.dart';
import 'package:payment_app/screens/Balance/Balance.dart';

// ignore: camel_case_types
class offers_design extends StatelessWidget {
  const offers_design({
    Key? key,
    required this.pic,
    required this.t1,
    required this.t2,
    required this.t3,
    required this.t4,
    // ignore: non_constant_identifier_names
    required this.CC,
  }) : super(key: key);
  final String t1, t2, t3, t4, pic;
  final int CC;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(3.0),
        child: Column(
          children: [
            Container(
              height: size.height * 0.12625,
              width: size.width * 0.9,
              decoration: BoxDecoration(
                color: Color(CC),
                borderRadius: const BorderRadius.all(
                  Radius.circular(
                    20,
                  ),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(
                    width: 28,
                  ),
                  Container(
                    height: 78,
                    width: 48,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(78.8),
                      ),
                      image: DecorationImage(
                        image: AssetImage(
                          pic,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 28,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          t1,
                          style: const TextStyle(
                              fontSize: 15,
                              fontStyle: FontStyle.italic,
                              color: Colors.white),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Text(
                          t2,
                          style: const TextStyle(
                              fontSize: 14,
                              fontStyle: FontStyle.italic,
                              color: Colors.white),
                        ),
                        const SizedBox(
                          height: 7,
                        ),
                        Text(
                          t3,
                          style: const TextStyle(
                              fontSize: 10,
                              fontStyle: FontStyle.italic,
                              color: Color(0xffB0BEC5)),
                        ),
                        Text(
                          t4,
                          style: const TextStyle(
                              fontSize: 10,
                              fontStyle: FontStyle.italic,
                              color: Color(0xffB0BEC5)),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 12,
            ),
          ],
        ),
      ),
    );
  }
}
