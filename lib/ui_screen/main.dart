import 'package:flutter/material.dart';
import 'onboarding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
        return MaterialApp(
          theme: ThemeData(
          ),
          home:  const Onboarding(),
          debugShowCheckedModeBanner: false,
        );
  }
}
// void main() {
//   runApp(
//     DevicePreview(
//       enabled: true,
//       builder: (BuildContext context) {
//         return Sizer(
//           builder: (c, o, d) {
//             return MaterialApp(
//               useInheritedMediaQuery: true,
//               builder: DevicePreview.appBuilder,
//               theme: ThemeData(
//               ),
//               home: const Onboarding(),
//               debugShowCheckedModeBanner: false,
//             );
//           },
//
//         );
//       },
//     ),
//   );
// }




