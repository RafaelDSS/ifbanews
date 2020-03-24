import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppWidget extends StatefulWidget {
  @override
  _AppWidgetState createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: Modular.navigatorKey,
      debugShowCheckedModeBanner: false,
      title: 'IFBA News',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      onGenerateRoute: Modular.generateRoute,
      initialRoute: '/',
    );
  }
}
