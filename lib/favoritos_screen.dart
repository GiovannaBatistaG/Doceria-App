  import 'package:flutter/material.dart';

  import 'detalhe_doce.dart';
  import 'favoritos.dart';

  class FavoritosScreen extends StatefulWidget {
    const FavoritosScreen({super.key});

    @override
    State<StatefulWidget> createState() {
      return _FavoritosScreenState();
    }
  }

  class _FavoritosScreenState extends State<FavoritosScreen> {
    @override
    Widget build(BuildContext context) {
      if (favoritos.isEmpty) {
        return Center(
          child: Text(
            "Nenhum  doce favoritada",
            style: TextStyle(fontSize: 18),
          ),
        );
      }

      return ListView.builder(
        itemCount: favoritos.length,

        itemBuilder: (context, index) {
          return ListTile(
            leading: Image.network(favoritos[index].imagem, width: 50),

            title: Text(favoritos[index].nome),

            trailing: Icon(Icons.arrow_forward),

            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetalheDoce(doce: favoritos[index]),
                ),
              );
            },
          );
        },
      );
    }
  }
