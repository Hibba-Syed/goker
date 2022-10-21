import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../Extra/colors.dart';
import '../Extra/gredients/regrediants.dart';

class ReuseButton extends StatelessWidget {
  final String text;
  final VoidCallback onClicked;

  const ReuseButton({Key? key,
    required this.text,
    required this.onClicked,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onClicked,
      child: Container(
        height: 43, width: 274,
        decoration:  BoxDecoration(
          borderRadius:  BorderRadius.circular(7),
          gradient: ReuseLinearGradient.yellow,
        ),
        child: Padding(
          padding:  const EdgeInsets.only(top: 6,left: 85),
          child: Text( text,style: GoogleFonts.poppins(color: CColors.whiteColor,
              fontSize: 16,fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}