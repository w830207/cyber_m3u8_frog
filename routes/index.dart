import 'dart:io';
import 'package:dart_frog/dart_frog.dart';

Future<Response> onRequest(RequestContext context) async {
  final cyberIndex = await File('public/index.html').readAsString();

  return Response(
    body: cyberIndex,
    headers: {
      HttpHeaders.contentTypeHeader: ContentType.html.mimeType,
    },
  );
}
