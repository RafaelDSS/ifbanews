import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:ifbanews/app/app_widget.dart';
import 'package:ifbanews/app/modules/home/home_module.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  List<ModularRoute> routes = [
    ModuleRoute('/', module: HomeModule()),
  ];
}
