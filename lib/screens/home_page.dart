import 'package:flutter/material.dart';
import 'package:in_time_digital/screens/input_page.dart';

class HomePage extends StatelessWidget {
  static String id = "HomePage";
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      child: Row(
                        children: const [
                          Icon(Icons.person_add_alt_rounded,
                              size: 30, color: Color(0xff3683FC)),
                          SizedBox(width: 5),
                          Text("1/ea",
                              style: TextStyle(
                                  color: Color(0xff3683FC), fontSize: 20)),
                        ],
                      ),
                    ),
                    SizedBox(
                      child: Row(
                        children: const [
                          Text("Skip",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 20)),
                          Icon(Icons.keyboard_arrow_right,
                              size: 30, color: Colors.black),
                          SizedBox(width: 5),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'Welcome to ',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    TextSpan(
                      text: 'In Time Digital',
                      style: TextStyle(
                        color: Color(0xff3683FC),
                        fontSize: 30,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              const Text(
                "Reverse aging, extend active lifespan now with Longevity InTime",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black54,
                    fontSize: 20,
                    fontWeight: FontWeight.w400),
              ),
              const Spacer(),
              Center(child: Image.asset("assets/image4.png", width: 300)),
              const Spacer(),
              const Text(
                "We need to know more about you, so please fill in the form ",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w400),
              ),
              const Spacer(),
              Align(
                alignment: Alignment.center,
                child: MaterialButton(
                  minWidth: double.infinity,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  padding: const EdgeInsets.symmetric(
                    vertical: 10,
                  ),
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, InputPage.id);
                  },
                  color: const Color(0xff3683FC),
                  child: const Text(
                    "Continue",
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
