import 'package:flutter/material.dart';
import 'package:goker/Extra/gredients/regrediants.dart';
import 'package:goker/ui_screen/onboarding.dart';
import 'package:goker/widgets/custom_level.dart';
import 'package:google_fonts/google_fonts.dart';
import '../Extra/colors.dart';
class Level1 extends StatelessWidget {
  const Level1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 360, width: 310,
          decoration: BoxDecoration(
              border: Border.all(color: CColors.c,width: 3),
              borderRadius: BorderRadius.circular(22),
              color:CColors.black
          ),
          child: Column(
            children: [
              Center(
                child: Container(
                  height: 70,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    gradient: ReuseLinearGradient.yellow,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(19),
                      topRight: Radius.circular(19),
                    ),
                  ),

                  child: Center(child: Text("Level 1",style:GoogleFonts.poppins(
                      color: CColors.whiteColor,fontWeight: FontWeight.bold,fontSize: 26),),),
                ),
              ),
               Padding(
                 padding: const EdgeInsets.only(top: 10),
                 child: Text("You have Completed \n        "
                     "          level 1",style: GoogleFonts.poppins(color: CColors.c,
                     fontSize: 18,fontWeight: FontWeight.bold ),),
               ),
              Padding(
                padding: const EdgeInsets.only(top: 10,right: 162),
                child: Text("What to do ?",style: GoogleFonts.poppins(color: CColors.whiteColor,
                    fontSize: 16,fontWeight: FontWeight.bold ),),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text("Now each player will choose a card to\n "
                            "play and the player with highest   \n "
                           " pattern wins the pot for this round. You \n "
                           " can validate your chosen cards to find \n "
                           " out the patterns.",style: GoogleFonts.poppins(color: CColors.whiteColor,
                    fontSize: 13),),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  dialogueButton(
                      text: 'Back', onClicked: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  const CustomLevel()),
                    );
                  }, gradient: ReuseLinearGradient.black),
                  dialogueButton(
                      text: 'Continue', onClicked: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  const Onboarding()),
                    );
                  }, gradient: ReuseLinearGradient.yellow),
                ],
              ),
            ],
          ),

        ),
      ),
    );
  }
}


class dialogueButton extends StatelessWidget {
  final String text;
  var gradient;
  final VoidCallback onClicked;

  dialogueButton({Key? key,
    required this.text,
    required this.onClicked,
    required this.gradient
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onClicked,
      child: Container(
        height: 40, width: 120,
        decoration:  BoxDecoration(
            borderRadius:  BorderRadius.circular(7),
            gradient: gradient,
            border: Border.all(color: CColors.c,width: 1)
        ),
        child: Center(
          child: Text( text,style: GoogleFonts.poppins(color: CColors.whiteColor,
              fontSize: 12,fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
