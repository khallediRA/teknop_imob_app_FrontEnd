import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:test_web_app/models/immobilier_post.dart';

class NetworkCalls {
  static const String baseUrl = 'http://localhost:8080/api/posts';
  Future<List<ImmobilierPost>> getAllPosts() async {
    final response = await http.get(Uri.parse(baseUrl + "/getAllPosts"));

    if (response.statusCode == 200 || response.statusCode == 201) {
      final result = json.decode(response.body);
      Iterable list = result;
      List<ImmobilierPost> listImmobilier = [];
      for (var item in list) {
        listImmobilier.add(ImmobilierPost.fromMap(item));
      }

      return listImmobilier;
    } else {
      throw Exception('Failed to load immobilier posts');
    }
  }

  Future<int> createNewImmobilierPost(ImmobilierPost immobilierPost) async {
    String body = immobilierPost.toJson();
    final response = await http.post(Uri.parse(baseUrl), body: body, headers: {
      "Content-type": "application/json",
      "Accept": "application/json"
    });
    if (response.statusCode == 200 || response.statusCode == 201) {
      return response.statusCode;
    } else {
      response.statusCode;
      throw Exception('Failed Post New Immobilier');
    }
  }

  Future<int> updateImmobilierPost(ImmobilierPost immobilierPost) async {
    String body = immobilierPost.toJson();
    final response = await http.put(
        Uri.parse(baseUrl + "/updateImmobilierPost"),
        body: body,
        headers: {
          "Content-type": "application/json",
          "Accept": "application/json"
        });
    if (response.statusCode == 200 || response.statusCode == 201) {
      return response.statusCode;
    } else {
      response.statusCode;
      throw Exception('Failed Update on Immobilier');
    }
  }
}
