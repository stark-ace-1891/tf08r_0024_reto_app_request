import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:tf08r_0024_reto_app_request/widget/header_icon_widget.dart';
import 'package:tf08r_0024_reto_app_request/widget/header_title_widget.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HeaderIconWidget(),
        HeaderTitleWidget(),
      ],
    );
  }
}
