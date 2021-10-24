import 'package:http/http.dart' as http;
import 'package:ifbanews/app/modules/home/models/news.dart';

import 'dart:convert';

class NewsRepository {
  Future fetchNews() async {
    http.Response response;
    List<News>? news;
    const url = 'https://noticiasifba.herokuapp.com/news';

    try {
      response = await http.get(Uri.parse(url));
    } catch (e) {
      return null;
    }

    if (response.statusCode == 200) {
      news = (json.decode(utf8.decode(response.bodyBytes))["data"] as List)
          .map((item) => News.fromJson(item))
          .toList();
      return news;
    }
    return null;
  }
}
