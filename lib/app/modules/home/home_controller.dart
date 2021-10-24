import 'package:ifbanews/app/modules/home/repositories/news_repository.dart';
import 'package:mobx/mobx.dart';

import 'models/news.dart';
part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  final NewsRepository repository;

  _HomeControllerBase(this.repository);

  @observable
  List<News>? data;

  @observable
  bool error = false;

  @action
  getNews() async {
    final news = await repository.fetchNews();
    if (news != null) {
      data = news;
    } else {
      error = true;
    }
  }
}
