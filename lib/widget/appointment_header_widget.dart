import 'package:flutter/material.dart';

class AppointmentHeaderWidget extends StatelessWidget {
  const AppointmentHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        bottom: 10,
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 15,
          horizontal: 23,
        ),
        decoration: const BoxDecoration(
          color: Color(0xff256FFF),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(32),
            topRight: Radius.circular(32),
          ),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Appointment Request",
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.60),
                  ),
                ),
                Icon(
                  Icons.more_vert_outlined,
                  color: Colors.white.withOpacity(0.60),
                ),
              ],
            ),
            Row(
              children: [
                Icon(
                  Icons.access_time_filled,
                  color: Colors.white.withOpacity(0.8),
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  "12 Jan 2020, 8am - 10am",
                  style: TextStyle(
                      color: Colors.white.withOpacity(0.8),
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
