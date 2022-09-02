import 'package:flutter/material.dart';

class SuggestionDetails extends StatelessWidget {
  const SuggestionDetails({Key? key, required this.text}) : super(key: key);
  static String id = "SuggestionDetails";
  final String text;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            foregroundColor: Colors.black,
            backgroundColor: Colors.transparent,
            elevation: 0,
            centerTitle: true,
            title: const Text('Suggestion Details',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.w400)),
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text,
                  style: const TextStyle(
                      fontSize: 32, fontWeight: FontWeight.w400),
                ),
                const Text(
                  "Description",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w400),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Ready to Walk? Set a goal and earn \$LONG by completing!",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                ),
                Align(
                  alignment: Alignment.center,
                  child: MaterialButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    padding: const EdgeInsets.symmetric(
                      vertical: 15,
                      horizontal: 40,
                    ),
                    onPressed: () {},
                    color: const Color(0xff3683FC),
                    child: const Text(
                      "Start a goal",
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          )),
    );
  }
}
