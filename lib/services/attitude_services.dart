import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:slicing_jurnalku/model/attitude.dart';

class AttitudeService {
  static const String baseUrl = 'http://127.0.0.1:8000/api/attitude';
  Future<List<Attitude>> getAttitude() async {
    final response = await http.get(Uri.parse(baseUrl));

    if (response.statusCode == 200) {
      final jsonData = json.decode(response.body);

      final List list = jsonData['data'];
      return list.map((e) => Attitude.fromJson(e)).toList();
    } else {
      throw Exception('Gagal mengambil data');
    }
  }
}
