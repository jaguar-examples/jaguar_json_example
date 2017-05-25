library main;

import 'dart:io';
import 'dart:async';

import 'package:http/http.dart' as http;
import 'package:jaguar_json_example/serializers/serializers.dart';
import 'package:jaguar_json_example/models/models.dart';

const String kHostname = 'localhost';

const int kPort = 8080;

final http.Client _client = new http.Client();

Future<Null> printHttpClientResponse(http.Response resp) async {
  print('=========================');
  print("body:");
  print(resp.body);
  print('=========================');
}

Future<Null> execSHello() async {
  String url = "http://$kHostname:$kPort/api/serializer/hello";
  http.Response resp = await _client.get(url);

  await printHttpClientResponse(resp);
}

Future<Null> execSMath() async {
  String url = "http://$kHostname:$kPort/api/serializer/math";
  http.Response resp = await _client.post(url, body: '{"a": 10, "b": 5}');

  await printHttpClientResponse(resp);
}

Future<Null> execRHello() async {
  String url = "http://$kHostname:$kPort/api/repo/hello";
  http.Response resp = await _client.get(url);

  await printHttpClientResponse(resp);
}

Future<Null> execRMath() async {
  String url = "http://$kHostname:$kPort/api/repo/math";
  String body = repo.serialize(new MathInput()..a = 25..b = 15, withType: true);
  http.Response resp = await _client.post(url, body: body);

  await printHttpClientResponse(resp);
}

main() async {
  await execSHello();
  await execSMath();
  await execRHello();
  await execRMath();
  exit(0);
}