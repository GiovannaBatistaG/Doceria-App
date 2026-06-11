import 'package:flutter/material.dart';

import 'doce.dart';

class DetalheDoce extends StatelessWidget {
  final Doce doce;

  const DetalheDoce({super.key, required this.doce});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(doce.nome)),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              doce.imagem,
              width: double.infinity,
              height: 250,
              fit: BoxFit.cover,
            ),

            const Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                "Ingredientes",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),

            ...doce.ingredientes.map(
              (ingrediente) => Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 4,
                ),
                child: Text("• $ingrediente"),
              ),
            ),

            const Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                "Modo de Preparo",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),

            ...doce.preparo.map(
              (passo) => Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 4,
                ),
                child: Text("• $passo"),
              ),
            ),

            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
