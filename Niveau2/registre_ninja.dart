import 'dart:io';

bool checkValeur(int n) => n > 0;
void main() {
  int nombre;
  do {
    print("Combien de ninjas voulez-vous enregistrer?");
    nombre = int.parse(stdin.readLineSync()!);
  } while (!checkValeur(nombre));
}
