import 'package:cyber_m3u8_frog/maps.dart';
import 'package:dart_frog/dart_frog.dart';

Future<Response> onRequest(RequestContext context) async {
  return Response.json(body: tvTypeMap);
}
