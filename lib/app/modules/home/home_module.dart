import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:ifbanews/app/modules/home/home_controller.dart';
import 'package:ifbanews/app/modules/home/home_page.dart';
import 'package:ifbanews/app/modules/home/repositories/news_repository.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => NewsRepository()),
        Bind((i) => HomeController(i.get<NewsRepository>()))
      ];

  @override
  List<Router> get routers => [
        Router('/home', child: (_, args) => HomePage()),
      ];

  @override
  Widget get view => HomePage();
}
