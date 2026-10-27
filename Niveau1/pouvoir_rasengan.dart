import 'dart:io';

bool checkValeurs(int chakra, int annee) {
  return chakra > 0 && annee > 0;
}

int calculerPuissance(int chakra, int annee) {
  return chakra * annee;
}

void main() {
  int chakra;
  int annee;
  do {
    print("chakra: ");
    chakra = int.parse(stdin.readLineSync()!);
    print("années  :");
    annee = int.parse(stdin.readLineSync()!);
  } while (!checkValeurs(chakra, annee));
  print("Puissance du rasengan:${calculerPuissance(chakra, annee)} ");
}
