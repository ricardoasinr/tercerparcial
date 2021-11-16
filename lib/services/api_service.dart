import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:day33/services/medicos.dart';

import 'package:shared_preferences/shared_preferences.dart';

class ApiServices {
  final String url =
      "https://apidoctores20211108194851.azurewebsites.net/api/Medicos";

  /*
    <<< GET FUNCTION >>>
  */
  Future<List<Medicos>> getMedicos() async {
    final response = await http.get(
      Uri.parse(url),
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
    );

    if (response.statusCode == 200) {
      List jsonResponse = json.decode(response.body);
      return jsonResponse.map((job) => new Medicos.fromJson(job)).toList();
    } else {
      throw Exception('Failed to load doctors from API');
    }
  }

  Future<Medicos> getMedico(int id) async {
    final response = await http.get(
      Uri.parse("$url/$id"),
      headers: {
        'Content-Type': 'application/json; charset=UTF-8',
        'Accept': 'application/json',
      },
    );
    if (response.statusCode == 200)
      return Medicos.fromJson(json.decode(response.body));
    else
      throw Exception('Failed to load doctor from API');
  }

  /*
    <<< POST FUNCTION >>>
  */
  Future<Medicos> postMedico(Medicos medico) async {
    Map data = {
      'seguroId': medico.seguroId,
      'nombreDoctor': medico.nombreDoctor,
      'especialidad': medico.especialidad,
      'direccion': medico.direccion,
      'celular': medico.celular,
    };

    final response = await http.post(
      Uri.parse(url),
      headers: {
        'Content-Type': 'application/json',
      },
      body: jsonEncode(data),
    );

    print("Code: ${response.statusCode}");
    print("Body: ${response.body}");

    if (response.statusCode == 201)
      return Medicos.fromJson(json.decode(response.body));
    else
      throw Exception('Failed to post doctor');
  }

  /*
    <<< PUT FUNCTION >>>
  */

  Future<void> putMedico(int? id, Medicos medico) async {
    Map data = {
      'especialidadId': id,
      'seguroId': medico.seguroId,
      'nombreDoctor': medico.nombreDoctor,
      'especialidad': medico.especialidad,
      'direccion': medico.direccion,
      'celular': medico.celular,
    };

    final response = await http.put(
      Uri.parse("$url/$id"),
      headers: {
        'Content-Type': 'application/json',
      },
      body: jsonEncode(data),
    );

    print("Code: ${response.statusCode}");
    print('DATOS: \n${jsonEncode(data)}');
    if (response.statusCode != 204)
      throw Exception("Failed to update a doctor");
  }

  /*
    <<< DELETE FUNCTION >>>
  */
  Future<void> deleteMedico(int? id) async {
    final response = await http.delete(
      Uri.parse("$url/$id"),
      headers: {
        // 'Authorization': 'Bearer $token',
      },
    );

    if (response.statusCode != 204)
      throw Exception("Failed to delete a doctor");
  }
}
