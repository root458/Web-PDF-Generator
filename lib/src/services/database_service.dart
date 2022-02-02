import 'dart:convert';

import 'package:http/http.dart' as http;

class DatabaseService {
  static Future<List<List>> getData() async {
    var url = 'http://localhost/databasefiles/get.php';
    http.Response response = await http.get(Uri.parse(url));
    var data = jsonDecode(response.body);

    return data.map((recordMap) {
      return [
        recordMap['id'],
        recordMap['fname'],
        recordMap['sname'],
        recordMap['idnumber']
      ];
    }).toList();
  }
}
