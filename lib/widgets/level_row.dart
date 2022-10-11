import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../Extra/colors.dart';
import '../Extra/gredients/regrediants.dart';
class LevelRow extends StatelessWidget {

   const LevelRow({Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      Stack(
        children: [
          Positioned(
            left: 97,top: 14,
            child: Container(
              height: 12,width: 60,
              decoration: BoxDecoration(
               gradient: ReuseLinearGradient.yellow,
                borderRadius: BorderRadius.circular(5),
              ),
            ),
          ),
          Positioned(
            left: 120,top: 14,
            child: Container(
              height: 12,width: 135,
              decoration: BoxDecoration(
                color: CColors.whiteColor,
                borderRadius: BorderRadius.circular(5),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 3),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("LEVEL", style:GoogleFonts.poppins(color: CColors.whiteColor,
                    fontSize: 20,fontWeight: FontWeight.bold),),
                 const Rcontainer(text: '1',),
                const Rcontainer(text: '2',),
                const Rcontainer(text: '3',),
                Text("1/45", style:GoogleFonts.poppins(color: CColors.whiteColor,
                    fontSize: 20,fontWeight: FontWeight.bold),),
              ],
            ),
          ),
    ]
    );
  }
}
// this container use for level row
class Rcontainer extends StatelessWidget {
  final String text;

  const Rcontainer({Key? key,
    required this.text
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Container(
      height: 27,
      width: 27,
      decoration: BoxDecoration(
          gradient: ReuseLinearGradient.black,
          borderRadius: BorderRadius.circular(14),
          border: Border.all(color: CColors.whiteColor,width: 1)
      ),
      child: Center(child: Text(text,style: TextStyle(color: CColors.whiteColor,
          fontWeight: FontWeight.bold),)),
    );
  }
}

