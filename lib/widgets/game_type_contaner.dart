import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../Extra/colors.dart';
import '../Extra/gredients/regrediants.dart';

class GameContainer extends StatelessWidget {
  final String text;
  final String image;

  const GameContainer({Key? key,
    required this.text,
    required this.image
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 100,
      decoration: BoxDecoration(
        border: Border.all(color: CColors.c,width: 1),
        borderRadius: BorderRadius.circular(8),
        gradient: ReuseLinearGradient.yellow,
      ),
      margin: const EdgeInsets.only(left: 40,right: 40,bottom: 10),
      //  color: Colors.yellow,
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Image.asset(image,height: 45),
          ),
          Expanded(
            flex: 2,
            child: Container(
              decoration:  BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(8),
                  bottomRight: Radius.circular(8),
                ),
                color:CColors.black,
              ),
              child:  Center(child: Text(text
                , style: GoogleFonts.poppins(color: CColors.whiteColor,fontSize: 18,fontWeight: FontWeight.bold),
              ),
              ),
            ),),
        ],
      ),
    );
  }
}
class GameTContainer extends StatelessWidget {
  final String text;
  final String image;

  const GameTContainer({Key? key,
    required this.text,
    required this.image
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 100,
      decoration: BoxDecoration(
        border: Border.all(color: CColors.c,width: 1),
        borderRadius: BorderRadius.circular(8),
        gradient: ReuseLinearGradient.yellow,
      ),
      margin: const EdgeInsets.only(left: 40,right: 40,bottom: 10),
      //  color: Colors.yellow,
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              decoration:BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(8),
                  bottomLeft: Radius.circular(8),
                ),
                color:CColors.black,
              ),
              child:  Center(child: Text(text
                , style: GoogleFonts.poppins(color: CColors.whiteColor,fontSize: 18,fontWeight: FontWeight.bold),
              ),
              ),
            ),),
          Expanded(
            flex: 2,
            child: Image.asset(image,height: 45,),
          ),
        ],
      ),
    );
  }
}

