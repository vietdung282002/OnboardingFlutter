import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonWidgets extends StatelessWidget {
  final double width;
  final double height;
  final Color buttonColor;
  final Color textColor;
  final String text;
  final VoidCallback onPress;

  const ButtonWidgets(
      {super.key,
      this.width = 600,
      this.height = 50,
      required this.buttonColor,
      required this.text,
      required this.textColor,
      required this.onPress});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: width,
        height: height,
        child: CupertinoButton(
          padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 5),
          onPressed: onPress,
          color: buttonColor,
          child: Text(text,
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                    color: textColor,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              )),
        ));
  }
}
