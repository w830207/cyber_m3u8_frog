import 'dart:io';
import 'package:dart_frog/dart_frog.dart';

Future<Response> onRequest(RequestContext context) async {
  final cyberIndex = await File('public/live2d_html.html').readAsString();

  return Response(
    body: cyberIndex,
    headers: {
      HttpHeaders.contentTypeHeader: ContentType.html.mimeType,
    },
  );
}
