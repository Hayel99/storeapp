import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Api {
  /////// GET METHOD ///////
  Future<dynamic> get({required String url}) async {
    http.Response response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('ERRorwith stuts code ${response.statusCode}');
    }
  }
  /////// END OF THE GET METHOD ///////

  /////// POST METHOD ///////
  Future<dynamic> post({required String url, @required dynamic body}) async {
    http.Response response = await http.post(Uri.parse(url), body: body);
    Map<String, dynamic> data = jsonDecode(response.body);
    if (response.statusCode == 200) {
      return data;
    } else {
      throw Exception('ERRorwith stuts code ${response.statusCode}');
    }
  }
  ////// END OG POST METHOD //////

//////// PUT METHOD ///////
  Future<dynamic> put({required String url, @required dynamic body}) async {
    http.Response response = await http.post(Uri.parse(url), body: body);
    Map<String, dynamic> data = jsonDecode(response.body);
    if (response.statusCode == 200) {
      return data;
    } else {
      throw Exception('ERRorwith stuts code ${response.statusCode}');
    }
  }
  ////// END OF PUT METHOD ///////
}
