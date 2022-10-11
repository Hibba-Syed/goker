import 'package:flutter/material.dart';
import 'package:goker/Extra/gredients/regrediants.dart';
import 'package:goker/ui_screen/ball_page.dart';
import 'package:google_fonts/google_fonts.dart';
import '../Extra/colors.dart';
class CustomLevel extends StatelessWidget {
  const CustomLevel({Key? key}) : super(key: key);

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

                    child: Center(child: Text("Custom Level",style:GoogleFonts.poppins(
                        color: CColors.whiteColor,fontWeight: FontWeight.bold,fontSize: 26),),),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 12),
                child: ReuseRow(text: 'Total draws '),
              ),
              const ReuseRow(text: 'Level 1 at        '),
              const ReuseRow(text: 'Level 2 at        '),
              const ReuseRow(text: 'Level 3 at        '),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    dialogueButton(
                        text: 'Back', onClicked: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  const BallPage()),
                      );
                    }, gradient: ReuseLinearGradient.black),
                    dialogueButton(
                        text: 'Continue', onClicked: (){}, gradient: ReuseLinearGradient.yellow),
                  ],
                ),
              ),
            ],
          ),

        ),
      ),
    );
  }
}

class ReuseRow  extends StatelessWidget {
  final String text;
  const ReuseRow ({Key? key,
    required this.text
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 6),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(text,style:GoogleFonts.poppins(
              color: CColors.whiteColor,fontWeight: FontWeight.bold,fontSize: 14),),
          SizedBox(
            height: 42, width: 140,
            child: TextField(
              decoration: InputDecoration(
                isDense: true,
                filled: true,
                fillColor: CColors.dialogueColor,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10)
                ),
              ),
            ),
          )
        ],
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
