import 'package:flutter/material.dart';
import 'package:tf08r_0024_reto_app_request/widget/appointment_next_item_widget.dart';

class AppointmentNextWidget extends StatelessWidget {
  const AppointmentNextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: const BouncingScrollPhysics(),
        child: Container(
          padding: const EdgeInsets.only(
            top: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Next appointments",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Colors.black.withOpacity(0.45)
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const AppointmentNextItemWidget(),
              const AppointmentNextItemWidget(),
              const AppointmentNextItemWidget(),
              const AppointmentNextItemWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
