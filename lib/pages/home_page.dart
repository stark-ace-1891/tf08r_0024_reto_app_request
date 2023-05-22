import 'package:flutter/material.dart';
import 'package:tf08r_0024_reto_app_request/widget/appointment_widget.dart';
import 'package:tf08r_0024_reto_app_request/widget/header_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: const Color(0xffD8DFF6),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 22,
            ),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xffF3F6FF),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 30,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    HeaderWidget(),
                    AppointmentWidget(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
