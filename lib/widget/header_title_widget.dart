import 'package:flutter/material.dart';

class HeaderTitleWidget extends StatelessWidget {
  const HeaderTitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        bottom: 20,
      ),
      child: Column(
        children: const [
          Text(
            "Welcome Back!",
            style: TextStyle(
              fontSize: 20,
              color: Color(0xff8E9AC4),
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            "Dr. Peterson",
            style: TextStyle(
              fontSize: 26,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
