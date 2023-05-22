import 'package:flutter/material.dart';

class AppointmentMainWidget extends StatelessWidget {
  const AppointmentMainWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: ListTile(
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(20), // Image border
                  child: SizedBox.fromSize(
                    size: const Size.fromRadius(30), // Image radius
                    child: Image.network(
                      'https://images.pexels.com/photos/874158/pexels-photo-874158.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                title: const Text(
                  'Louis',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                subtitle: const Text(
                  'Patterson',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                trailing: const Icon(Icons.info_outlined),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
