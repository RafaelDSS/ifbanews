import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:ifbanews/app/modules/home/home_controller.dart';
import 'components/item_news.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = Modular.get<HomeController>();

  @override
  void initState() {
    super.initState();
    controller.getNews();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notícias - IFBA Campus Irecê"),
      ),
      body: Container(
        child: Observer(
          builder: (context) {
            if (controller.data != null) {
              return ListView.builder(
                itemCount: controller.data.length,
                itemBuilder: (context, index) {
                  final item = controller.data[index];
                  return ItemNews(item);
                },
              );
            } else if (controller.error) {
              return Center(
                child: Text(
                  'Ocorreu um erro de conexão.',
                  style: TextStyle(fontSize: 18.0),
                ),
              );
            }
            return Center(
              child: CircularProgressIndicator(),
            );
          },
        ),
      ),
    );
  }
}
