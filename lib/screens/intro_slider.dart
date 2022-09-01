import 'package:flutter/material.dart';
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';
import 'package:in_time_digital/screens/home_page.dart';

class OnBoarding extends StatelessWidget {
  static String id = "OnBoarding";

  const OnBoarding({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return OnBoardingSlider(
      headerBackgroundColor: Colors.white,
      controllerColor: const Color(0xff3683FC),
      finishButtonText: 'let\'s go',
      finishButtonColor: const Color(0xff3683FC),
      finishButtonTextStyle: const TextStyle(
        color: Colors.white,
        fontSize: 24,
      ),
      onFinish: () {
        Navigator.pushReplacementNamed(context, HomePage.id);
      },
      background: [
        Container(
          color: Colors.white,
          height: 700,
          width: 800,
        ),
        Container(
          color: Colors.white,
          height: 700,
          width: 800,
        ),
        Container(
          color: Colors.white,
          height: 700,
          width: 800,
        ),
      ],
      totalPage: 3,
      speed: 1.8,
      pageBodies: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 30,
            ),
            const Text(
              'Welcome!',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xff3683FC),
                fontSize: 32,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 70),
            SizedBox(
              width: 250,
              child: Image.asset(
                'assets/image1girl.png',
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(height: 100),
            SizedBox(
              width: 320,
              child: Column(
                children: const [
                  Text(
                    "Welcome to the only one of it’s kind",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 32,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text("AI Health Assistant",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 32,
                        fontWeight: FontWeight.w700,
                      )),
                ],
              ),
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 30,
            ),
            const Text(
              'AI Powered',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xff3683FC),
                fontSize: 32,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 70),
            SizedBox(
              width: 250,
              child: Image.asset(
                'assets/image2.png',
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(height: 50),
            SizedBox(
              width: 370,
              child: Column(
                children: [
                  const Text(
                    'A Digital BioBank with risk assessments and personalized recommendations that can predict severe diseases and extend your health span',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      height: 1.3,
                      color: Colors.black,
                      fontSize: 24,
                    ),
                  ),
                  const SizedBox(height: 20),
                  InkWell(
                    onTap: () {},
                    child: const Text("see how it works ↗",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xff3683FC),
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        )),
                  ),
                ],
              ),
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 30,
            ),
            const Text(
              'Data Protected',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xff3683FC),
                fontSize: 32,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 70),
            SizedBox(
              width: 250,
              child: Image.asset(
                'assets/image3.png',
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(height: 50),
            SizedBox(
              width: 370,
              child: Column(
                children: [
                  const Text(
                    'We use the latest encryption technology and anonymization to ensure your data will be secure in our servers at and Amazon (AWS) ',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      height: 1.3,
                      color: Colors.black,
                      fontSize: 24,
                    ),
                  ),
                  const SizedBox(height: 20),
                  InkWell(
                    onTap: () {},
                    child: const Text("learn more ↗",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xff3683FC),
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        )),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
