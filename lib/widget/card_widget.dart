import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:tf08r_0024_reto_app_request/widget/card_footer_widget.dart';
import 'package:tf08r_0024_reto_app_request/widget/card_header_widget.dart';
import 'package:tf08r_0024_reto_app_request/widget/card_main_widget.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      width: double.infinity,
      height: height * 0.29,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(32),
      ),
      child: Column(
        children: [
          CardHeaderWidget(),
          CardMainWidget(),
          CardFooterWidget(),
        ],
      ),
    );
  }
}
