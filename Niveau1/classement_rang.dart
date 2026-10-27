import 'dart:io';

bool estValide(int? nbre) => nbre != null && nbre >= 0;

void main() {
  int? nbre;
  do {
    print("Veuillez saisir le nombre de missions :");
    nbre = int.tryParse(stdin.readLineSync() ?? "");
    if (!estValide(nbre)) {
      print("Saisie invalide, entrez un entier positif.");
    }
  } while (!estValide(nbre));

  String appreciation = switch (nbre!) {
    <= 5 => "Genin",
    <= 20 => "Chunin",
    <= 50 => "Jonin",
    <= 100 => "Ninja d'élite",
    _ => "Candidat au titre de Kage",
  };
  print(appreciation);
}
