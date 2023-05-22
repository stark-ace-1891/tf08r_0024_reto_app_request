import 'package:flutter/material.dart';
import 'package:tf08r_0024_reto_app_request/widget/appointment_footer_widget.dart';
import 'package:tf08r_0024_reto_app_request/widget/appointment_header_widget.dart';
import 'package:tf08r_0024_reto_app_request/widget/appointment_main_widget.dart';

class AppointmentWidget extends StatelessWidget {
  const AppointmentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    // double width = MediaQuery.of(context).size.width;
    return Container(
      width: double.infinity,
      height: height * 0.29,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(32),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.06),
            blurRadius: 12,
            offset: Offset(4, 4),
          ),
        ],
      ),
      child: Column(
        children: const [
          AppointmentHeaderWidget(),
          AppointmentMainWidget(),
          AppointmentFooterWidget(),
        ],
      ),
    );
  }
}
