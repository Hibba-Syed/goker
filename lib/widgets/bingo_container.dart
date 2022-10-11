import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../Extra/colors.dart';
import '../Extra/gredients/regrediants.dart';


class BingoContainer extends StatelessWidget {
  final String text;
  const BingoContainer({Key? key,
    required this.text
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return    Container(
      height: 50,width: 50,
      decoration:  BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: ReuseLinearGradient.yellow,
      ),
      child: Center(
        child: Text(text,style:GoogleFonts.poppins(color: CColors.whiteColor,
            fontWeight: FontWeight.bold,fontSize: 30),
        ),
      ),
    );
  }
}
