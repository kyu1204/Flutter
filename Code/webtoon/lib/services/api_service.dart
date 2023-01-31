import 'package:http/http.dart' as http;

class APIService {
  final String baseUrl = "https://webtoon-crawler.nomadcoders.workers.dev";
  final String toay = "today";

  void getTodaysToons() async {
    final url = Uri.parse('$baseUrl/$toay');
    final resposne = await http.get(url);
    if (resposne.statusCode == 200) {
      print(resposne.body);
      return;
    }
    throw Error();
  }
}
