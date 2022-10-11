import 'package:flutter/material.dart';
class rowDesign extends StatelessWidget {
  final String image;
  // final String image1;
  const rowDesign({Key? key,
    required this.image,
    //required this.image1,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10,left: 13),
      child: SizedBox(
        height: 45, width: 45,
        child: Wrap(
            children: [
              Image.asset(image),
            ]
        ),
      ),
    );
    // return  SizedBox(
    //   height: 95,
    //     child: GridView.count(
    //       crossAxisCount: 3,
    //       children: [
    //         Image.asset(image,height: 35,),
    //         Image.asset(image,height: 35,),
    //         Image.asset(image,height: 35,),
    //       ],
    //
    //     ),
    //
    // );

  }
}
void changValue(){

}