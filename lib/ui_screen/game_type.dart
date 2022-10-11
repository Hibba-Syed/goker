import 'package:flutter/material.dart';
import '../Extra/colors.dart';
import '../Widgets/game_type_contaner.dart';
import 'card_page.dart';
class GameType extends StatelessWidget {
  const GameType({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: ( AssetImage("assets/images/bord.png")
              ),
              fit: BoxFit.fill
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 35,left: 17),
                      child: IconButton(
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>  const CardPage()),
                          );
                          },
                        icon: Icon(Icons.arrow_back_outlined,color: CColors.c,size: 24,),
                      ),
                    ),),
                  Expanded(
                    flex: 4,
                    child: Container(
                   //   color: Colors.blue,

                    ),),
                ],
              ),
              Flexible(
                flex: 1,
                child: Image.asset("assets/icon/logo.png",height: 69,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 40),
                child: GameContainer(text: 'Classic\nDraw', image: 'assets/images/bingo 1.png',),
              ),
              const GameTContainer(text: 'Rapid\nStart', image: 'assets/images/spin-drum 1.png',),
              const GameContainer(text: 'Custom \n Levels', image:'assets/images/bingo2.png',),
              const GameTContainer(text: 'Coming\n Soon', image: 'assets/images/quality.png',),
            ],
          ),
        ),
      ),
    );
  }
}
