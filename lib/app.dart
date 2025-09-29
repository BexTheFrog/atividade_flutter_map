import 'package:atividade_mapa/Config/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:atividade_mapa/Config/app_routes.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme,
      title: 'Atividade Mapa',
      initialRoute: "/",
      routes: AppRoutes.routes,
      debugShowCheckedModeBanner: false,
    );
  }
}
