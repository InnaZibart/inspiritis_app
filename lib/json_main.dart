// import 'dart:convert';
// import 'package:flutter/material.dart';

// const jsonString = '''
// {
//   "activity": "Go on a long drive with no music",
//   "availability": 0.2,
//   "type": "relaxation",
//   "participants": 1,
//   "price": 0.1,
//   "accessibility": "Minor challenges",
//   "duration": "hours",
//   "kidFriendly": true,
//   "link": "",
//   "key": "4290333"
// }
// ''';

// void main() {
//   runApp(const MainApp());
// }

// class MainApp extends StatefulWidget {
//   const MainApp({super.key});

//   @override
//   State<MainApp> createState() => _MainAppState();
// }

// class _MainAppState extends State<MainApp> {
//   String activity = 'Go on a long drive with no music';
//   String type = "relaxation";
//   String link = '';

//   Future<void> getActivity() async {
//     final Map<String, dynamic> jsonMap = json.decode(jsonString);

//     setState(() {
//       activity = '${jsonMap['activity']}';
//       type = '${jsonMap['type']}';
//       link = '${jsonMap['link'] ?? "No link available"}';
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         backgroundColor: Color.fromARGB(255, 148, 170, 173),
//         body: SafeArea(
//           child: Column(
//             children: [
//               Container(
//                 alignment: Alignment.topCenter,
//                 child: Image.asset('assets/inspiritis_header.jpg'),
//               ),
//               const SizedBox(
//                 height: 20,
//               ),
//               SizedBox(
//                 width: 300,
//                 child: Text(
//                   "Bored? Find random things to do!",
//                   textAlign: TextAlign.center,
//                 ),
//               ),
//               SizedBox(
//                 height: 10,
//               ),
//               Container(
//                 height: 45,
//                 width: 270,
//                 child: ElevatedButton(
//                   onPressed: () async {
//                     await getActivity();
//                     setState(() {
//                       activity = newActivity
//                       Text("Activity: $activity");
//                       Text("Type: $type");
//                       Text("Link: $link");
//                     });
//                   },
//                   child: Text("Create activity"),
//                 ),
//               ),
//               const SizedBox(
//                 height: 20,
//               ),
//               // Hier kannst du die Werte anzeigen
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
