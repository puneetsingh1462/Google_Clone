import 'package:googleclone/config/api_json.dart';
import 'package:googleclone/config/api_keys.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class APIService {
  bool isDummyData = false ;
  Future<Map<String, dynamic>> fetchData(
      {required String queryTerm, String start = "0"}) async {
    try {
      if (!isDummyData) {
        String q = queryTerm.contains(' ')
            ? queryTerm.split(' ').join('%20')
            : queryTerm;
        final response = await http.get(
          Uri.parse(
              'https://www.googleapis.com/customsearch/v1?key=${api_key}&cx=$contextkey&q=$q&start=$start'),
        );
        if (response.statusCode == 200) {
          final jsonData = response.body;
          final respData = json.decode(jsonData);
          return respData;
        }
      }
    } catch (e) {
      print(e.toString());
    }
    return apiResponse;
  }
}
