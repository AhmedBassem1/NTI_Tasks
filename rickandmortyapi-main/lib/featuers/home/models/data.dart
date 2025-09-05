import 'package:dio/dio.dart';

import 'model.dart';

final Dio dio = Dio();

Future<List<RMCharacter>> fetchCharacters({int page = 1}) async {
  final res = await dio.get(
    'https://rickandmortyapi.com/api/character',
    queryParameters: {'page': page},
  );
  final data = res.data as Map<String, dynamic>;
  final results = data['results'] as List;
  return results
      .map((item) => RMCharacter.fromJson(item as Map<String, dynamic>))
      .toList();
}
