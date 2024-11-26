import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:onboarding/colors.dart';
import 'package:onboarding/widget/button_widgets.dart';
import 'package:onboarding/widget/text_field_widgets.dart';

class Signin extends StatelessWidget {
  const Signin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          const SizedBox(height: 50),
          Center(
            child: Text(
              "Login here",
              style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                      color: mainColor,
                      fontSize: 30,
                      fontWeight: FontWeight.bold)),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 60, right: 60),
              child: Text(
                "Welcome back you’ve been missed!",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.w600)),
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: Column(
              children: [
                const TextFieldWidgets(
                  height: 60,
                  placeholder: "Email",
                ),
                const SizedBox(
                  height: 30,
                ),
                const TextFieldWidgets(
                  height: 60,
                  placeholder: "Password",
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Forgot your password?",
                          style: TextStyle(
                              color: mainColor,
                              fontSize: 14,
                              fontWeight: FontWeight.w700),
                        )),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                ButtonWidgets(
                    buttonColor: mainColor,
                    text: "Sign in",
                    textColor: Colors.white,
                    onPress: () {}),
                const SizedBox(
                  height: 10,
                ),
                TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/signup');
                    },
                    child: Text("Create new account",
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              color: textColor,
                              fontSize: 14,
                              fontWeight: FontWeight.w700),
                        ))),
                const SizedBox(
                  height: 30,
                ),
                TextButton(
                    onPressed: () {},
                    child: Text("Or continue with",
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              color: mainColor,
                              fontSize: 14,
                              fontWeight: FontWeight.w700),
                        ))),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onPressed: () {},
                      icon: Image.asset("assets/google.png"),
                    ),
                    IconButton(
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onPressed: () {},
                      icon: Image.asset("assets/facebook.png"),
                    ),
                    IconButton(
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onPressed: () {},
                      icon: Image.asset("assets/apple.png"),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      )),
    );
  }
}
