import 'package:flutter/material.dart';
import 'package:in_time_digital/screens/suggestion_detail.dart';

class MainSuggestionsCard extends StatelessWidget {
  const MainSuggestionsCard({
    required this.text,
    required this.icon,
    required this.iconColor,
    Key? key,
  }) : super(key: key);
  final String text;
  final IconData icon;
  final Color iconColor;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => SuggestionDetails(
                      text: text,
                    )));
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
          ),
          padding: const EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(
                icon,
                size: 30,
                color: iconColor,
              ),
              const SizedBox(
                width: 10,
              ),
              Text(text,
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.w400)),
            ],
          ),
        ),
      ),
    );
  }
}
