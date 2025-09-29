import 'package:atividade_mapa/Pages/home_page.dart';
import 'package:atividade_mapa/Pages/map_page.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static Map<String, WidgetBuilder> routes = {
    "/": (context) => MyHomePage(),
    "/mapa": (context) => MapPage(),
  };
}
