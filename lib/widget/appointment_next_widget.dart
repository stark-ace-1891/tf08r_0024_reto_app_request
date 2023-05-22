import 'package:flutter/material.dart';
import 'package:tf08r_0024_reto_app_request/data/fake_data.dart';
import 'package:tf08r_0024_reto_app_request/widget/appointment_next_item_widget.dart';

class AppointmentNextWidget extends StatelessWidget {
  const AppointmentNextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    FakeData data = FakeData();
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 30,
          ),
          Text(
            "Next appointments",
            style: TextStyle(
              color: Color(0xff8E9AC4),
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          FutureBuilder(
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
                        bottom: 20,
                      ),
                      child: Column(
                        children: snap.data
                            .map((element) {
                              return AppointmentNextItemWidget(
                                name: element["name"],
                                image: element["image"],
                                date: element["date"],
                                online: element["online"],
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
          ),
        ],
      ),
    );
  }
}
