

import 'dart:convert';
import 'dart:async';
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:flutter/foundation.dart' show debugPrint;
import 'package:path/path.dart' as path;
import 'package:http/http.dart' as http;

class Response {
  final String? token;
  final String? message;

  Response({this.token, this.message});

  Response.fromJson(Map<String, dynamic> json)
      : message = json['message'],
        token = json['token'];
}

class User {
  final String? name;
  final String? email;
  final DateTime createdAt;
  final String? imageUrl;

  User.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        email = json['email'],
        createdAt = DateTime.tryParse(json['created_at']) ?? new DateTime.now(),
        imageUrl = json['image_url'];

  @override
  String toString() => '$name, $email, $imageUrl';
}


class MyHttpException extends HttpException {
  final int statusCode;
  MyHttpException(this.statusCode, String message) : super(message);
}


class ApiService {
  static const String baseUrl = 'http://localhost:4000';
  static ApiService? instance;
  factory ApiService() => instance ??= ApiService._internal();
  ApiService._internal();

  // return message and token
  Future<Response> loginUser(String email, String password) async {
    final url = new Uri.https(baseUrl, '/users/authenticate');
    final credentials = {
      "Username":email,
      "Password":password,
    };
    final json = await NetworkUtils.post(url, "sds", credentials);
    return Response.fromJson(json);
  }
}

class NetworkUtils {
  static Future get(Uri url, headers) async {
    final response = await http.get(url, headers: headers);
    final body = response.body;
    final statusCode = response.statusCode;
    if (body == null) {
      throw MyHttpException(statusCode, 'Response body is null');
    }
    final decoded = json.decode(body);
    if (statusCode < 200 || statusCode >= 300) {
      throw MyHttpException(statusCode, decoded['message']);
    }
    return decoded;
  }

  static Future post(Uri url,
      headers,  body) {
    return _helper('POST', url, headers: headers, body: body);
  }

  static Future _helper(String method, Uri url,
      {Map<String, String>? headers, Map<String, String>? body}) async {
    final request = new http.Request(method, url);
    if (body != null) {
      request.bodyFields = body;
    }
    if (headers != null) {
      request.headers.addAll(headers);
    }
    final streamedReponse = await request.send();

    final statusCode = streamedReponse.statusCode;
    final decoded = json.decode(await streamedReponse.stream.bytesToString());

    debugPrint('decoded: $decoded');

    if (statusCode < 200 || statusCode >= 300) {
      throw MyHttpException(statusCode, decoded['message']);
    }

    return decoded;
  }

  static Future put(Uri url, {Map<String, String>? headers, body}) {
    return _helper('PUT', url, headers: headers, body: body);
  }
}