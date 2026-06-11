import 'package:flutter/material.dart';

import 'lista_doces.dart';
import 'favoritos_screen.dart';

class TelaPrincipal extends StatefulWidget {
  const TelaPrincipal({super.key});

  @override
  State<TelaPrincipal> createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal> {
  int paginaAtual = 0;

  final List<Widget> telas = [const ListaDoces(), const FavoritosScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Doceria App",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      drawer: Drawer(
        child: ListView(
          children: const [
            DrawerHeader(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.cake, size: 70),
                  SizedBox(height: 12),
                  Text(
                    "Doceria App",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),

            ListTile(leading: Icon(Icons.cake), title: Text("Doces")),

            ListTile(leading: Icon(Icons.favorite), title: Text("Favoritos")),
          ],
        ),
      ),

      body: telas[paginaAtual],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: paginaAtual,

        onTap: (indice) {
          setState(() {
            paginaAtual = indice;
          });
        },

        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.cake), label: "Doces"),

          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: "Favoritos",
          ),
        ],
      ),
    );
  }
}
