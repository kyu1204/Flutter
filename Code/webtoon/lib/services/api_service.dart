import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:webtoon/models/webtoon_model.dart';

class APIService {
  final String baseUrl = "https://webtoon-crawler.nomadcoders.workers.dev";
  final String toay = "today";

  Future<List<WebtoonModel>> getTodaysToons() async {
    List<WebtoonModel> webtoonInstances = [];
    final url = Uri.parse('$baseUrl/$toay');
    final resposne = await http.get(url);

    if (resposne.statusCode == 200) {
      final webtoons = jsonDecode(resposne.body);
      for (var webtoon in webtoons) {
        webtoonInstances.add(WebtoonModel.fromJson(webtoon));
      }
      return webtoonInstances;
    }
    throw Error();
  }
}
