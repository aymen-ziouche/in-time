import 'package:flutter/material.dart';
import 'package:in_time_digital/screens/appointment_page.dart';
import 'package:in_time_digital/widgets/devices_card.dart';
import 'package:in_time_digital/widgets/home_card.dart';
import 'package:in_time_digital/widgets/home_suggested_risks.dart';
import 'package:in_time_digital/widgets/main_card_home.dart';
import 'package:in_time_digital/widgets/main_suggestions_card.dart';
import 'package:in_time_digital/widgets/subscribe_card.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({
    Key? key,
    required this.interpretation,
    required this.bmiResult,
    required this.resultText,
    required this.idealweight,
    required this.name,
    required this.bmr,
    required this.bmicolor,
  }) : super(key: key);
  static String id = "DashboardPage";

  final String bmiResult;
  final String resultText;
  final String interpretation;
  final String name;
  final String idealweight;
  final String bmr;
  final Color bmicolor;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    SizedBox(
                      child: Row(
                        children: [
                          const CircleAvatar(
                            radius: 30,
                            backgroundColor: Color(0xff3683FC),
                            backgroundImage: AssetImage("assets/jane.png"),
                          ),
                          const SizedBox(width: 10),
                          Text(
                            name,
                            style: const TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      child: Row(
                        children: const [
                          Icon(Icons.person_add_alt_rounded,
                              size: 30, color: Color(0xff3683FC)),
                          SizedBox(width: 5),
                          Text("3.5k",
                              style: TextStyle(
                                  color: Color(0xff3683FC), fontSize: 20)),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    HomeSuggestedRisks(
                        text: "Home", icon: Icons.home, selected: true),
                    HomeSuggestedRisks(
                      text: "Suggested",
                      icon: Icons.medical_services_outlined,
                      selected: false,
                    ),
                    HomeSuggestedRisks(
                      text: "Risks",
                      icon: Icons.auto_graph_sharp,
                      selected: false,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                SizedBox(
                  height: 180,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: const [
                      Home_card(),
                      Home_card(),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: const [
                        Text(
                          "My summary",
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          "Tap on any item to see details",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset('assets/Vector2.png', height: 35),
                        const SizedBox(width: 10),
                        Image.asset('assets/Vector1.png', height: 35),
                        const SizedBox(width: 10),
                        Image.asset('assets/Vector.png', height: 35),
                      ],
                    )
                  ],
                ),
                MainCardHome(
                    label1: "Risk level",
                    value1: resultText,
                    label2: "BMI",
                    value2: bmiResult,
                    color: bmicolor,
                    label3: "ideal weight",
                    value3: idealweight),
                MainCardHome(
                    label1: "Obesity Rate",
                    value1: resultText,
                    label2: "BMR",
                    value2: bmr,
                    color: bmicolor,
                    label3: "Bio-Age",
                    value3: "25"),
                SizedBox(
                  height: 80,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text("Body Type",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w400)),
                          Text("Mesomorph",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w400)),
                        ],
                      ),
                      const SizedBox(),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text("Subcutaneous Fat",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w400)),
                          Text("15%",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w400)),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                const Divider(
                  color: Color(0xff3683FC),
                  thickness: 0.5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Suggestions",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 32,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      "All",
                      style: TextStyle(
                        color: Color(0xff3683FC),
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                const MainSuggestionsCard(
                  text: "Walk more than 10,000 steps a day",
                  icon: Icons.arrow_drop_up,
                  iconColor: Colors.red,
                ),
                const MainSuggestionsCard(
                  text: "limit your alcohol consumption",
                  icon: Icons.indeterminate_check_box_rounded,
                  iconColor: Colors.deepOrangeAccent,
                ),
                const MainSuggestionsCard(
                  text: "Walk 10,000 steps a day",
                  icon: Icons.circle,
                  iconColor: Colors.green,
                ),
                const SubscribeCard(),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Text(
                      "Do you want to make an appointment?",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, AppointmentPage.id);
                      },
                      child: const Text(
                        "Here",
                        style: TextStyle(
                          color: Color(0xff3683FC),
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Divider(
                  color: Color(0xff3683FC),
                  thickness: 0.5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Devices",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 32,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      "All",
                      style: TextStyle(
                        color: Color(0xff3683FC),
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                const DeviceCard(
                    text: "ScanWatch",
                    icon: Icons.watch_rounded,
                    connected: true),
                const DeviceCard(
                    text: "Longevity BioContainer",
                    icon: Icons.laptop_rounded,
                    connected: false)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
