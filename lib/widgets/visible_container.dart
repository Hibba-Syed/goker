import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Extra/colors.dart';
import '../Extra/gredients/regrediants.dart';
class VisibleContainer extends StatelessWidget {
  late String text;

   VisibleContainer({Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: BoxDecoration(
        gradient: ReuseLinearGradient.grey,
        borderRadius: BorderRadius.circular(4),
      ),
      height: 35,width: 35,
      child: Center(
        child: Text(text,style: GoogleFonts.poppins(
            color: CColors.whiteColor,fontWeight: FontWeight.bold,fontSize: 23),),
      ),
    );
  }
}
class VisibleContainerRed extends StatelessWidget {
  late String text;

  VisibleContainerRed({Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: BoxDecoration(
        gradient: ReuseLinearGradient.red,
        borderRadius: BorderRadius.circular(4),
      ),
      height: 35,width: 35,
      child: Center(
        child: Text(text,style: GoogleFonts.poppins(
            color: CColors.whiteColor,fontWeight: FontWeight.bold,fontSize: 23),),
      ),
    );
  }
}
