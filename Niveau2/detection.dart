import 'dart:io';

class Ninja {
  late int chakra;
  late int nbreEnemi;

  Ninja({required this.chakra, required this.nbreEnemi});
}

bool estEnDanger(int chakra, int ennemi) {
  return (chakra < 20 && ennemi > 3) || (chakra < 10);
}

void main() {
  print("Veuillez resnseigner 5 ninja");
  List<Ninja> liste = [];

  for (int i = 1; i <= 5; i++) {
    int chakra;
    int nbreEnemi;
    print("Ninja $i :");
    print("chakra: ");
    chakra = int.parse(stdin.readLineSync()!);
    print("Nbre enémi :");
    nbreEnemi = int.parse(stdin.readLineSync()!);
    liste.add(new Ninja(chakra: chakra, nbreEnemi: nbreEnemi));
  }
  print("Liste des ninja en danger\n");
  for (int i = 0; i < 5; i++) {
    if (estEnDanger(liste[i].chakra, liste[i].nbreEnemi)) {
      print("Le ninja ${i + 1} est en danger\n");
    }
  }
}
