import 'package:flutter/material.dart';

class DeviceCard extends StatelessWidget {
  const DeviceCard({
    required this.text,
    required this.icon,
    required this.connected,
    Key? key,
  }) : super(key: key);
  final String text;
  final IconData icon;
  final bool connected;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
        ),
        padding: const EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(
                    icon,
                    size: 30,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(text,
                          style: const TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w400)),
                      connected
                          ? const Text(
                              "Connected",
                              style: TextStyle(color: Colors.green),
                            )
                          : const Text(
                              "Disconnected",
                              style: TextStyle(color: Colors.red),
                            ),
                    ],
                  ),
                ],
              ),
            ),
            Icon(Icons.keyboard_arrow_right_outlined, size: 30),
          ],
        ),
      ),
    );
  }
}
