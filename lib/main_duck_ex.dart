import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

void main() {
  runApp(const MainApp());
}

const activityUri = 'https://www.boredapi.com/api/activity/';

Future<String> getDataFromApi() async {
  final Response response = await get(Uri.parse(activityUri));
  final String jsonString = response.body;
  return jsonString;
}

Future<String> getActivity() async {
  final String jsonString = await getDataFromApi();
  final Map<String, dynamic> jsonMap = json.decode(jsonString);
  final String activity = jsonMap['activity'];

  return activity;
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  String boredActivity = '';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(32.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(boredActivity.isEmpty
                    ? 'Noch keine Aktivität empfohlen.'
                    : boredActivity),
                const SizedBox(height: 16),
                OutlinedButton(
                  onPressed: () async {
                    boredActivity = await getActivity();
                    setState(() {});
                  },
                  child: const Text("Neue Info"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
