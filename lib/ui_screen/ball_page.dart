import 'package:flutter/material.dart';
import 'package:goker/widgets/level_row.dart';
import 'package:google_fonts/google_fonts.dart';
import '../Extra/colors.dart';
import '../Extra/gredients/regrediants.dart';
import '../model/model.dart';
import '../widgets/bingo_container.dart';
import '../widgets/level1.dart';

class BallPage extends StatefulWidget {
  const BallPage({Key? key}) : super(key: key);

  @override
  State<BallPage> createState() => _BallPageState();
}
class _BallPageState extends State<BallPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          constraints: const BoxConstraints.expand(),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: (AssetImage("assets/images/bord.png")
              ),
              fit: BoxFit.fill,
            ),
          ),
              child: SafeArea(
                child: Column(
                  //
                  children: [
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 17,top: 25),
                          child: IconButton(
                            onPressed: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) =>  const Level1()),
                              );
                            },
                            icon: Icon(Icons.arrow_back_outlined,color: CColors.c,size: 24,),
                          ),
                        ),),
                      Expanded(
                        flex: 26,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 26),
                          child: Image.asset("assets/icon/logo.png",height: 69,),
                        ),),
                    ],
                  ),
                  const LevelRow(),
                    Padding(
                      padding: const EdgeInsets.only(top: 11,left: 25,right: 25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          BingoContainer(text: 'B',),
                          BingoContainer(text: 'I',),
                          BingoContainer(text: 'N',),
                          BingoContainer(text: 'G',),
                          BingoContainer(text: 'O',),
                        ],
                      ),
                    ),
                   Padding(
                     padding: const EdgeInsets.only(left: 25,right: 20),
                     child: SizedBox(
                       height: 427,
                       child: ListView.builder(
                         itemCount: 75,
                           itemBuilder: (context,index) {
                               int i = index + 1;
                               return Wrap(
                                   children:const [
                                    // Image.asset ("assets/images/${i}f.png" , height: 45),
                                   ]
                               );
                                // image: ("assets/images/${i}c.png "),
                             }
                       ),
                     ),
                   ),
                   //bottom container
                   bottomWidget(),
                ],
            ),
              ),
      ),
     );
  }
  Container bottomWidget(){
 return Container(
   height: 85,
   width: double.infinity,
   decoration: BoxDecoration(
     color: CColors.bottomContainer2,
     borderRadius: const BorderRadius.only(
         bottomRight: Radius.circular(8),
         bottomLeft: Radius.circular(8)
     ),
   ),
   child: Row(
     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
     children:  [
       Container(
         height: 42,width: 77,
         decoration: BoxDecoration(
           gradient: ReuseLinearGradient.yellow,
           borderRadius: BorderRadius.circular(10),
         ),
         child: Center(
           child: Text('Validate',style: GoogleFonts.poppins(
               color: CColors.whiteColor,fontSize: 11,fontWeight: FontWeight.bold),),
         ),
       ),
       //2
       Container(
         height: 42,width: 56,
         decoration: BoxDecoration(
           gradient: ReuseLinearGradient.yellow,
           borderRadius: BorderRadius.circular(10),
         ),
         child: Center(
           child: Text('Draw',style: GoogleFonts.poppins(
               color: CColors.whiteColor,fontSize: 11,fontWeight: FontWeight.bold),),
         ),
       ),
       //3
       Container(
         height: 42,width: 46,
         decoration: BoxDecoration(
           color: CColors.box,
           borderRadius: BorderRadius.circular(10),
         ),
         child: Center(
           child: Text('B',style: GoogleFonts.poppins(
               color: CColors.c,fontSize: 23,fontWeight: FontWeight.bold),),
         ),
       ),
       //4
       Container(
         height: 42,width: 46,
         decoration: BoxDecoration(
           color: CColors.box,
           borderRadius: BorderRadius.circular(10),
         ),
         child: Center(
           child: Text('75',style: GoogleFonts.poppins(
               color: CColors.c,fontSize: 23,fontWeight: FontWeight.bold),),
         ),
       ),
     ],
   ),
 );
  }
}
