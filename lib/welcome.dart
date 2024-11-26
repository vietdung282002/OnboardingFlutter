import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:onboarding/colors.dart';
import 'package:onboarding/widget/button_widgets.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          SizedBox(
            height: screenHeight * 474 / 926,
            child: const Center(
              child: Padding(
                padding:
                    EdgeInsets.only(top: 40, left: 10, bottom: 52, right: 10),
                child: Image(
                  image: AssetImage('assets/welcome_image.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40, right: 40),
            child: Center(
              child: Text(
                'Discover Your Dream Job here',
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        color: mainColor,
                        fontWeight: FontWeight.w600,
                        fontSize: 35,
                        height: 1.5)),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: Center(
              child: Text(
                'Explore all the existing job roles based on your interest and study major',
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.normal,
                        fontSize: 14,
                        height: 1.5)),
              ),
            ),
          ),
          const SizedBox(
            height: 60,
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ButtonWidgets(
                  width: screenWidth * 160 / 428,
                  height: 40,
                  buttonColor: mainColor,
                  text: "Login",
                  textColor: Colors.white,
                  onPress: () {
                    Navigator.pushNamed(context, '/signin');
                  },
                ),
                const SizedBox(
                  width: 20,
                ),
                ButtonWidgets(
                  width: screenWidth * 160 / 428,
                  height: 40,
                  buttonColor: Colors.white,
                  text: "Register",
                  textColor: Colors.black,
                  onPress: () {
                    Navigator.pushNamed(context, '/signup');
                  },
                ),
              ],
            ),
          )
        ],
      )),
    );
  }
}
