import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import 'dados_doces.dart';
import 'detalhe_doce.dart';
import 'doce.dart';
import 'favoritos.dart';


class ListaDoces extends StatefulWidget {
  const ListaDoces({super.key});

  @override
  State<StatefulWidget> createState() {
    return _ListaDocesState();
  }
}

class _ListaDocesState extends State<ListaDoces> {
  List<Doce> doces = [];

  @override
  void initState() {
    super.initState();

    doces = listaDoces;
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: doces.length,
      itemBuilder: (context, index) {
       return Card(
  clipBehavior: Clip.antiAlias,

  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(16),
  ),

  child: InkWell(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => DetalheDoce(
            doce: doces[index],
          ),
        ),
      );
    },

    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        Stack(
          children: [

            SizedBox(
              width: double.infinity,
              height: 180,

              child: Image.asset(
                doces[index].imagem2,
                fit: BoxFit.cover,

                errorBuilder: (context, error, stackTrace) {
                  return const Center(
                    child: Icon(
                      Icons.cake,
                      size: 60,
                    ),
                  );
                },
              ),
            ),

            Positioned(
              top: 8,
              right: 8,

              child: CircleAvatar(
                backgroundColor: Colors.white,

                child: IconButton(
                  icon: Icon(
                    favoritos.contains(doces[index])
                        ? Icons.favorite
                        : Icons.favorite_border,
                    color: Colors.red,
                  ),

                  onPressed: () {
                    setState(() {

                      if (favoritos.contains(doces[index])) {
                        favoritos.remove(doces[index]);
                      } else {
                        favoritos.add(doces[index]);
                      }

                    });
                  },
                ),
              ),
            ),
          ],
        ),

        Padding(
          padding: const EdgeInsets.all(16),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [

              Text(
                doces[index].nome,

                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 4),

              const Text(
                "Toque para visualizar os detalhes",
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),  
        );
      },
    );
  }
}