import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../Extra/colors.dart';
import '../Extra/gredients/regrediants.dart';

class MainContainer extends StatelessWidget {
  final String text;
  final String image;
  final VoidCallback onPressed;
   const MainContainer({Key? key,
    required this.text,
    required this.image,
     required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        InkWell(
          onTap: onPressed,
          child: Container(
            height: 92,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: CColors.c,width: 1),
              gradient: ReuseLinearGradient.black,
            ),
            margin: const EdgeInsets.only(left: 35,right: 35,top: 15),
            child:
            Padding(
              padding: const EdgeInsets.only(right: 45),
              child: Align(
                alignment: Alignment.centerRight,
                child: Text(text,style: GoogleFonts.poppins(
                    color: CColors.whiteColor,fontSize: 16,fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: 17, left: 37,
          child: Container(
            height: 88, width: 92,
            decoration:  BoxDecoration(
                gradient: ReuseLinearGradient.grey,
                borderRadius: BorderRadius.circular(8)
            ),
            child:Image.asset(image),
          ),
        ),
      ],
    );
  }
}

// second

class  MainContainerRed extends StatelessWidget {
  final String text;
  final String image;
  final VoidCallback onPressed;
  const MainContainerRed({Key? key,
    required this.text,
    required this.image, required this.onPressed,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        InkWell(
          onTap: onPressed,
          child: Container(
            height: 92,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: CColors.c,width: 1),
              gradient: ReuseLinearGradient.black,
            ),
            margin: const EdgeInsets.only(left: 35,right: 35,top: 15),
            child:
            Padding(
              padding: const EdgeInsets.only(left: 45),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(text,style: GoogleFonts.poppins(
                    color: CColors.whiteColor,fontSize: 16,fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: 17, left: 231,
          child: Container(
            height: 88, width: 92,
            decoration:  BoxDecoration(
                gradient: ReuseLinearGradient.red,
                borderRadius: BorderRadius.circular(8)
            ),
            child:Image.asset(image),
          ),
        ),
      ],
    );
  }
}


