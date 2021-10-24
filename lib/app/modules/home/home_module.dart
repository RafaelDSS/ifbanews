import 'package:flutter_modular/flutter_modular.dart';
import 'package:ifbanews/app/modules/home/home_controller.dart';
import 'package:ifbanews/app/modules/home/home_page.dart';
import 'package:ifbanews/app/modules/home/repositories/news_repository.dart';

class HomeModule extends Module {
  @override
  final List<Bind> binds = [
    Bind((i) => NewsRepository()),
    Bind((i) => HomeController(i.get<NewsRepository>()))
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/home', child: (_, args) => HomePage()),
  ];
}
