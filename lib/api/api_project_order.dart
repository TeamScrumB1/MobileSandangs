import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:sandangs/models/project_model.dart';
import 'package:sandangs/variables.dart';

class ApiServiceProject {
  Future<Project> topHeadlines() async {
    final response = await http.post(
        Uri.parse('https://fashionizt.yufagency.com/project.php'),body: {
      "id_user" : idUserGlob,
    });
    if (response.statusCode == 200) {
      return Project.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load top headlines');
    }
  }
}