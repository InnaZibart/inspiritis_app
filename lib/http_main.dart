// import 'dart:math';

// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:inspiritis_app/class_random_activity.dart';
// import 'package:inspiritis_app/http_repository.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatefulWidget {
//   const MyApp({super.key});

//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   RandomActivityRepository repository = RandomActivityRepository();
//   RandomActivity? newRandomActivity;

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         backgroundColor: Color.fromARGB(255, 148, 170, 173),
//         body: SafeArea(
//             child: Column(children: [
//           Container(
//             alignment: Alignment.topCenter,
//             child: Image.asset('assets/inspiritis_header.jpg'),
//           ),
//           const SizedBox(
//             height: 20,
//           ),
//           SizedBox(
//               width: 300,
//               child: Text(
//                 "Bored? Find random things to do!",
//                 textAlign: TextAlign.center,
//                 style: GoogleFonts.comfortaa(
//                     color: Color.fromARGB(255, 71, 57, 80), fontSize: 16),
//               )),
//           SizedBox(
//             height: 10,
//           ),
//           Container(
//               height: 45,
//               width: 270,
//               child: ElevatedButton(
//                 onPressed: () async {
//                   final RandomActivityRepository repository =
//                       RandomActivityRepository();
//                   final RandomActivity newRandomActivity =
//                       await repository.getData();

//                   setState(() {
//                     this.newRandomActivity = newRandomActivity;
//                   });
//                 },
//                 child: Text(
//                   "Create activity",
//                 ),
//               )),
//           SizedBox(
//             height: 20,
//           ),
//           if (newRandomActivity != null)
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text('Activity: ${newRandomActivity!.activity}'),
//                 Text('Type: ${newRandomActivity!.type}'),
//                 // Text(
//                 //     'Participants: ${newRandomActivity!.participants.toString()}'),
//                 Text('Link: ${newRandomActivity!.link}')
//               ],
//             )
//         ])),
//       ),
//     );
//   }
// }
