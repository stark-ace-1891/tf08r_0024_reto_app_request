import 'package:flutter/material.dart';
import 'package:tf08r_0024_reto_app_request/data/fake_data.dart';
import 'package:tf08r_0024_reto_app_request/widget/appointment_next_item_widget.dart';

class AppointmentNextWidget extends StatelessWidget {
  const AppointmentNextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    FakeData data = FakeData();

    return FutureBuilder(
      future: data.getPlaces(),
      builder: (BuildContext context, AsyncSnapshot snap) {
        if (snap.hasData) {
          print(snap.data);
          return Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              physics: const BouncingScrollPhysics(),
              child: Container(
                padding: const EdgeInsets.only(
                  top: 20,
                ),
                child: Column(
                  children: snap.data
                      .map((element) {
                        return AppointmentNextItemWidget(
                          name: element["name"],
                          image: element["image"],
                          date: element["date"],
                        );
                      })
                      .whereType<Widget>()
                      .toList(),
                ),
              ),
            ),
          );
        } else {
          return CircularProgressIndicator();
        }
      },
    );
  }
}
