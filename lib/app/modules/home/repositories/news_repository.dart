import 'package:dio/dio.dart';
import 'package:ifbanews/app/modules/home/models/news.dart';

class NewsRepository {
  Future fetchNews() async {
    List<News> news;
    Response response;
    Dio dio = Dio();

    try {
      response = await dio.get('https://noticiasifba.herokuapp.com/news');
    } catch (e) {
      return null;
    }

    if (response.statusCode == 200) {
      news = (response.data["data"] as List)
          .map((item) => News.fromJson(item))
          .toList();
      return news;
    }
    return null;
  }
}
