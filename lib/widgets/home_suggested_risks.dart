import 'package:flutter/material.dart';

class HomeSuggestedRisks extends StatelessWidget {
  const HomeSuggestedRisks({
    required this.selected,
    required this.text,
    required this.icon,
    Key? key,
  }) : super(key: key);

  final bool selected;
  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: selected ? Colors.white : Colors.grey[200],
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 50,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: selected ? const Color(0xff3683FC) : Colors.black,
            size: 20,
          ),
          const SizedBox(width: 10),
          Text(
            text,
            style: TextStyle(
              color: selected ? const Color(0xff3683FC) : Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
