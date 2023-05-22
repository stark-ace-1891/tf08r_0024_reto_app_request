import 'package:flutter/material.dart';

class HeaderTitleWidget extends StatelessWidget {
  const HeaderTitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        bottom: 30,
      ),
      child: Column(
        children: const [
          Text(
            "Welcome back!",
            style: TextStyle(
              fontSize: 20,
              color: Colors.black26,
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
