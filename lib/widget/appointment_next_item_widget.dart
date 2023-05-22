import 'package:flutter/material.dart';

class AppointmentNextItemWidget extends StatelessWidget {
  final String name;
  final String image;
  final String date;
  final bool online;

  const AppointmentNextItemWidget(
      {required this.name, required this.image, required this.date, required this.online});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        bottom: 7,
      ),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.60),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.06),
            blurRadius: 12,
            offset: const Offset(4, 4),
          ),
        ],
      ),
      child: ListTile(
        leading: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20), // Image border
              child: SizedBox.fromSize(
                size: const Size.fromRadius(30), // Image radius
                child: Image.network(
                  image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Visibility(
              visible: online,
              child: Positioned(
                right: -1,
                bottom: -1,
                child: Container(
                  padding: const EdgeInsets.all(1),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: Container(
                    width: 15,
                    height: 15,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xff67FF3E),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
        title: Text(
          name,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(
          date,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            color: Color(0xff8E9AC4),
          ),
        ),
        trailing: const Icon(Icons.more_vert),
      ),
    );
  }
}
