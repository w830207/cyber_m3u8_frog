import 'package:cyber_m3u8_frog/maps.dart';
import 'package:dart_frog/dart_frog.dart';

Future<Response> onRequest(RequestContext context, String type) async {
  switch (type) {
    case 'normal':
      return Response.json(body: normalMap);
    case 'news':
      return Response.json(body: newsMap);
    case 'movie':
      return Response.json(body: movieMap);
    case 'sport':
      return Response.json(body: sportMap);
  }
  return Response.json(body: {});
}
