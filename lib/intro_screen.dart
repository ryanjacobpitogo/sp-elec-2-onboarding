import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        globalBackgroundColor: Colors.white,
        scrollPhysics: const BouncingScrollPhysics(),
        pages: [
          PageViewModel(
            titleWidget: const Text(
              "Write Title of Page",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            body:
                "Write the more description of the page. Write the more description of the page. Write the more description of the page.",
            image: Image.asset(
              "images/1.png",
              height: 400,
              width: 400,
            ),
            decoration: const PageDecoration(
              imagePadding: EdgeInsets.only(top: 60),
              titlePadding: EdgeInsets.only(bottom: 24),
              imageFlex: 4,
              bodyFlex: 2,
            ),
          ),
          PageViewModel(
            titleWidget: const Text(
              "Write Title of Page",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            body:
                "Write the more description of the page. Write the more description of the page. Write the more description of the page.",
            image: Image.asset(
              "images/2.png",
              height: 400,
              width: 400,
            ),
            decoration: const PageDecoration(
              imagePadding: EdgeInsets.only(top: 60, left: 48),
              titlePadding: EdgeInsets.only(bottom: 24),
              imageFlex: 4,
              bodyFlex: 2,
            ),
          ),
          PageViewModel(
            titleWidget: const Text(
              "Write Title of Page",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            body:
                "Write the more description of the page. Write the more description of the page. Write the more description of the page.",
            image: Image.asset(
              "images/3.png",
              height: 400,
              width: 400,
            ),
            decoration: const PageDecoration(
              imagePadding: EdgeInsets.only(top: 60, left: 48),
              titlePadding: EdgeInsets.only(bottom: 24),
              imageFlex: 4,
              bodyFlex: 2,
            ),
          ),
        ],
        onDone: () {
          Navigator.pushNamed(context, "home");
        },
        onSkip: () {
          Navigator.pushNamed(context, "home");
        },
        showSkipButton: true,
        skip: const Text(
          "Skip",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: Color(0xFF6C63FF),
          ),
        ),
        next: const Icon(
          Icons.arrow_forward,
          color: Color(0xFF6C63FF),
        ),
        done: const Text(
          "Done",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: Color(0xFF6C63FF),
          ),
        ),
        dotsDecorator: DotsDecorator(
          size: const Size.square(10.0),
          activeSize: const Size(20.0, 10.0),
          color: Colors.black26,
          activeColor: const Color(0xFF6C63FF),
          spacing: const EdgeInsets.symmetric(horizontal: 3.0),
          activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.0),
          ),
        ),
      ),
    );
  }
}
