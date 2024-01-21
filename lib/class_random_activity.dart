/*
https://www.boredapi.com/api/
https://bored-api.appbrewery.com/random
*/

//{"activity":"Go to a local thrift shop","availability":0.2,"type":"recreational","participants":1,"price":0.1,"accessibility":"Few to no challenges","duration":"hours","kidFriendly":true,"link":"","key":"8503795"}

class RandomActivity {
  String activity = '';
  String type = '';
  // int participants = 0;
  String link = '';

  RandomActivity(
      {required this.activity,
      required this.type,
      // required this.participants,
      required this.link});

  factory RandomActivity.fromJson(Map<String, dynamic> jsonMap) {
    return RandomActivity(
        activity: jsonMap['activity'],
        type: jsonMap['type'],
        // participants: jsonMap['participants'],
        link: jsonMap['link']);
  }
}
