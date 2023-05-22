import 'package:flutter/material.dart';

class HeaderIconWidget extends StatelessWidget {
  const HeaderIconWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        bottom: 30,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            Icons.dehaze,
            color: Colors.black45,
          ),
          Icon(
            Icons.calendar_today,
            color: Colors.black45,
          ),
        ],
      ),
    );
  }
}
