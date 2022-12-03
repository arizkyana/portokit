import 'dart:convert' as convert;
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:portokit/cores/core_params.dart';
import 'package:portokit/models/model_destination.dart';

const String PUBLIC_TOKEN =
    "8a064e810d9ddf4f84942f3117c611e9c5fe14604652821cb06aa3ead6129eb5748de2c671cf6d3742179798665c08d77d149ef8c88ee61c8a3c79c39985bd5f55aff5f0890d4a7a0a1a57e7ae842d37ca1a53279934b13538e9cd3991947c88679ee4ca92dbcec08e8b3badeae78fba4228e9e2e8f0fa6de65b611baf9c4b86";

class ApiDestination {
  static Future<List<ModelDestination>> getDestinations(
      [Params? params]) async {
    final url = Uri.parse(
        "http://192.168.1.3:1337/api/destinations${params != null ? params.generate() : ""}");
    final response = await http.get(url, headers: {
      HttpHeaders.authorizationHeader: "Bearer ${PUBLIC_TOKEN}",
    });

    if (response.statusCode == HttpStatus.ok) {
      final jsonResponse =
          convert.jsonDecode(response.body) as Map<String, dynamic>;

      final data = jsonResponse["data"] as List<dynamic>;

      final destinations = data.map((item) {
        return ModelDestination.fromJSON(item);
      }).toList();

      return destinations;
    }
    return [] as List<ModelDestination>;
  }
}
