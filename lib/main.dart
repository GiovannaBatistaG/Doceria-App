import 'package:flutter/material.dart';
import 'tela_principal.dart';

void main() {
  runApp(const DocesApp());
}

class DocesApp extends StatelessWidget {
  const DocesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: "Doceria App",

      theme: ThemeData(
        useMaterial3: true,

        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFFFFB6C1)),

        appBarTheme: const AppBarTheme(centerTitle: true, elevation: 3),

        cardTheme: CardThemeData(
          elevation: 4,
          margin: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        ),
      ),

      home: const TelaPrincipal(),
    );
  }
}
