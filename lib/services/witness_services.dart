import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:slicing_jurnalku/model/witness.dart';

class WitnessService {
  static const String baseUrl = 'http://127.0.0.1:8000/api/witness';

  Future<List<Witness>> getWitness() async {
    final response = await http.get(Uri.parse(baseUrl));

    if (response.statusCode == 200) {
      final jsonData = json.decode(response.body);
      final List list = jsonData['data'];

      return list.map((e) => Witness.fromJson(e)).toList();
    } else {
      throw Exception('Gagal mengambil data witness');
    }
  }
}
