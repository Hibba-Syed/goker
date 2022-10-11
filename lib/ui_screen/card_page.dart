import 'package:flutter/material.dart';
import 'package:goker/ui_screen/ball_page.dart';
import 'package:google_fonts/google_fonts.dart';
import '../Extra/colors.dart';
import '../Extra/gredients/regrediants.dart';
import '../Widgets/main_container.dart';
import '../Widgets/visible_container.dart';

class CardPage extends StatefulWidget {
  const CardPage({Key? key}) : super(key: key);

  @override
  State<CardPage> createState() => _CardPageState();
}

class _CardPageState extends State<CardPage> {
  bool isVisibel = false;
  bool show = false;
  bool display = false;
  bool visible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
     Container(
          constraints: const BoxConstraints.expand(),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: (AssetImage("assets/images/bord.png")
            ),
              fit: BoxFit.fill
            ),
          ),
          child: SafeArea(
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child:
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 40,left: 20),
                        child: Row(
                          children: [
                            IconButton(
                                onPressed: (){
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) =>  const BallPage()),
                                  );
                                },
                                icon: Icon(Icons.arrow_back_outlined,size: 24,color: CColors.c)
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 34),
                              child: Image.asset("assets/icon/logo.png",height: 50,),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10,left: 30),
                        child: Row(
                          children: [
                            Text("Select the number of\n"
                                "your cards" ,style: GoogleFonts.poppins(color: CColors.whiteColor,fontSize: 20)),
                            Padding(
                              padding: const EdgeInsets.only(left: 23),
                              child: Container(
                                height: 44, width: 59,
                                decoration:  BoxDecoration(
                                    gradient: ReuseLinearGradient.yellow,
                                    borderRadius: BorderRadius.circular(8)
                                ),
                                child: Center(child: Text("Rules",style: GoogleFonts.poppins(
                                    color: CColors.whiteColor,fontWeight: FontWeight.bold),),),
                              ),
                            ),
                          ],
                        ),
                      ),
                      MainContainer(
                        text: 'Spades',
                        image: 'assets/images/spades.png',
                        onPressed: () {
                          setState(() {
                            isVisibel = !isVisibel;
                          });
                        },
                      ),
                      Visibility(
                        visible: isVisibel,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 5,left: 28,right: 28),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children:  [
                                  VisibleContainer(text: 'A',
                                  ),
                                  VisibleContainer(
                                      text:'K'
                                  ),
                                  VisibleContainer(
                                      text:'Q'
                                  ),
                                  VisibleContainer(
                                      text:'J'
                                  ),
                                  VisibleContainer(
                                      text:'10'
                                  ),
                                  VisibleContainer(
                                      text:'9'
                                  ),
                                  VisibleContainer(
                                      text:'8'
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10, left: 40,right: 40),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  VisibleContainer(text: '7',
                                  ),
                                  VisibleContainer(text: '6',
                                  ),
                                  VisibleContainer(text: '5',
                                  ),
                                  VisibleContainer(text: '4',
                                  ),
                                  VisibleContainer(text: '3',
                                  ),
                                  VisibleContainer(text: '2',
                                  ),

                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      // calling container second time
                      MainContainerRed(
                        text: 'Hearts',
                        image: 'assets/images/heart.png',
                        onPressed: () {
                          setState(() {
                            show = !show;
                          });
                        },
                      ),
                      Visibility(
                        visible: show,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 5,left: 28,right: 28),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children:  [
                                  VisibleContainerRed(text: 'A',
                                  ),
                                  VisibleContainerRed(
                                      text:'K'
                                  ),
                                  VisibleContainerRed(
                                      text:'Q'
                                  ),
                                  VisibleContainerRed(
                                      text:'J'
                                  ),
                                  VisibleContainerRed(
                                      text:'10'
                                  ),
                                  VisibleContainerRed(
                                      text:'9'
                                  ),
                                  VisibleContainerRed(
                                      text:'8'
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10, left: 40,right: 40),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  VisibleContainerRed(text: '7',
                                  ),
                                  VisibleContainerRed(text: '6',
                                  ),
                                  VisibleContainerRed(text: '5',
                                  ),
                                  VisibleContainerRed(text: '4',
                                  ),
                                  VisibleContainerRed(text: '3',
                                  ),
                                  VisibleContainerRed(text: '2',
                                  ),

                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      // calling container third time
                      MainContainer(
                        text: 'Clubs',
                        image: 'assets/images/clubs.png',
                        onPressed: () {
                          setState(() {
                            display = !display;
                          });
                        },
                      ),
                      Visibility(
                        visible: display,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 5,left: 28,right: 28),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children:  [
                                  VisibleContainer(text: 'A',
                                  ),
                                  VisibleContainer(
                                      text:'K'
                                  ),
                                  VisibleContainer(
                                      text:'Q'
                                  ),
                                  VisibleContainer(
                                      text:'J'
                                  ),
                                  VisibleContainer(
                                      text:'10'
                                  ),
                                  VisibleContainer(
                                      text:'9'
                                  ),
                                  VisibleContainer(
                                      text:'8'
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10, left: 40,right: 40),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  VisibleContainer(text: '7',
                                  ),
                                  VisibleContainer(text: '6',
                                  ),
                                  VisibleContainer(text: '5',
                                  ),
                                  VisibleContainer(text: '4',
                                  ),
                                  VisibleContainer(text: '3',
                                  ),
                                  VisibleContainer(text: '2',
                                  ),

                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      // calling the container fourth time
                      MainContainerRed(
                        text: 'Diamonds',
                        image: 'assets/images/diamonds.png',
                        onPressed: () {
                          setState(() {
                            visible = !visible;
                          });
                        },
                      ),
                      Visibility(
                        visible: visible,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 5,left: 28,right: 28),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children:  [
                                  VisibleContainerRed(text: 'A',
                                  ),
                                  VisibleContainerRed(
                                      text:'K'
                                  ),
                                  VisibleContainerRed(
                                      text:'Q'
                                  ),
                                  VisibleContainerRed(
                                      text:'J'
                                  ),
                                  VisibleContainerRed(
                                      text:'10'
                                  ),
                                  VisibleContainerRed(
                                      text:'9'
                                  ),
                                  VisibleContainerRed(
                                      text:'8'
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10, left: 40,right: 40),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  VisibleContainerRed(text: '7',
                                  ),
                                  VisibleContainerRed(text: '6',
                                  ),
                                  VisibleContainerRed(text: '5',
                                  ),
                                  VisibleContainerRed(text: '4',
                                  ),
                                  VisibleContainerRed(text: '3',
                                  ),
                                  VisibleContainerRed(text: '2',
                                  ),

                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
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
