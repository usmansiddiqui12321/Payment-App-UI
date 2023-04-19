import 'package:flutter/material.dart';
import 'package:payment_app/screens/Home/Components/purpleBtn.dart';

class Ticketbooking extends StatelessWidget {
  const Ticketbooking({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          purpleButton(
            Title: "Movie",
            iconn: Icons.slow_motion_video,
          ),
          purpleButton(
            Title: "Train",
            iconn: Icons.train,
          ),
          purpleButton(
            Title: "Bus",
            iconn: Icons.directions_bus_rounded,
          ),
          purpleButton(
              Title: "Flights", iconn: Icons.airplanemode_active_outlined),
          purpleButton(
            Title: "Cars",
            iconn: Icons.directions_car,
          ),
        ],
      ),
    );
  }
}
