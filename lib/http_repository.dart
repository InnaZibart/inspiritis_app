import 'dart:convert';

import 'package:http/http.dart';
import 'package:inspiritis_app/class_random_activity.dart';

class RandomActivityRepository {
  final dataUri = 'https://bored-api.appbrewery.com/random';

  Future<String> getDataApi() async {
    final Response response = await get(Uri.parse(dataUri));

    final String jsonString = response.body;
    return jsonString;
  }

  Future<RandomActivity> getData() async {
    final String jsonString = await getDataApi();
    final Map<String, dynamic> jsonMap = json.decode(jsonString);

    final RandomActivity newRandomActivity = RandomActivity.fromJson(jsonMap);
    return newRandomActivity;
  }
}
