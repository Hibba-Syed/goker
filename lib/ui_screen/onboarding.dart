import 'package:flutter/material.dart';
import '../widgets/level1.dart';
import '../widgets/reusebutton.dart';
import 'game_type.dart';
class Onboarding extends StatelessWidget {
  const Onboarding({Key? key}) : super(key: key);

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
        child: SingleChildScrollView(
          child: Column(
            children: [
            Padding(
              padding: const EdgeInsets.only(top: 226),
              child: Image.asset("assets/icon/logo.png",height: 92,),
            ),
             Padding(
              padding: const EdgeInsets.only(top: 46),
              child: ReuseButton(
                text: 'Goker Draw',
                onClicked: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  const GameType()),
                  );
                },
              ),
                 ),
               Padding(
                padding: const EdgeInsets.only(top: 14),
                child: ReuseButton(
                  text: 'External Draw',
                  onClicked: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  const Level1()),
                    );
                  },

                ),
              ),
            ],
          ),
        ),
        ),

    );
  }
}


