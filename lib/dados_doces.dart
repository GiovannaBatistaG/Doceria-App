import 'doce.dart';
import 'detalhe_doce.dart';

List<Doce> listaDoces = [
  Doce(
    id: 1,
    nome: "Brigadeiro",
    imagem: "assets/images/brigadeiro.jpg",
    imagem2: "assets/images/brigadeiro2.jpg",
    ingredientes: [
      "1 lata de leite condensado",
      "2 colheres de chocolate",
      "Granulado",
    ],
    preparo: ["Misture tudo", "Leve ao fogo", "Enrole e passe no granulado"],
  ),

  Doce(
    id: 2,
    nome: "Beijinho",
    imagem: "assets/images/beijinho.jpg",
    imagem2: "assets/images/beijinho2.jpg",
    ingredientes: ["Leite condensado", "Coco ralado"],
    preparo: [
      "Misture os ingredientes",
      "Leve ao fogo",
      "Enrole e finalize com coco",
    ],
  ),

  Doce(
    id: 3,
    nome: "Pudim",
    imagem: "assets/images/pudim.jpg",
    imagem2: "assets/images/pudim2.jpg",
    ingredientes: ["Leite condensado", "Leite", "Ovos"],
    preparo: ["Misture tudo", "Prepare a calda", "Asse em banho-maria"],
  ),
];
