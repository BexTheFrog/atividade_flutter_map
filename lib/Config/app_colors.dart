import 'package:flutter/material.dart';

class AppColors {
  // Cor principal: Feldgrau
  static const Color feldgrau = Color(0xFF3A4B41);

  // Cor secundária: Wheat
  static const Color wheat = Color(0xFFE6CFA7);

  // Exemplo de variações adicionais (opcional)
  static const Color feldgrauLight = Color(0xFF4E5E54);
  static const Color feldgrauDark = Color(0xFF2A3831);

  static const Color wheatLight = Color(0xFFF3E3C5);
  static const Color wheatDark = Color(0xFFC9AE85);
}

// Theme Data

ThemeData theme = ThemeData(
  primaryColor: AppColors.feldgrau,
  scaffoldBackgroundColor: AppColors.wheat,
  appBarTheme: const AppBarTheme(
    backgroundColor: AppColors.feldgrau,
    foregroundColor: AppColors.wheat,
  ),
  textTheme: const TextTheme(bodyMedium: TextStyle(color: AppColors.feldgrau)),
);
