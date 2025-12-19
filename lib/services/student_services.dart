import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:slicing_jurnalku/model/student.dart';

class StudentService {
  static const String baseUrl = 'http://127.0.0.1:8000/api/student';

  Future<Student> getStudent() async {
    final response = await http.get(Uri.parse(baseUrl));

    if (response.statusCode == 200) {
      final jsonData = json.decode(response.body);

      return Student.fromJson(jsonData['data'][0]);
    } else {
      throw Exception('Gagal mengambil data student');
    }
  }
}
