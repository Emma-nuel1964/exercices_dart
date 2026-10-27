import 'dart:io';

bool check_lancer(int? nbre) => nbre != null && nbre > 0;
void main() {
  int nbre;
  print("Combien de lancer avez-vous éffectué? \n");
  nbre = int.parse(
    stdin.readLineSync()!,
  ); //prend nbre , mais si il est null , prend ""
  while (!check_lancer(nbre)) {
    print("veuillez entrer un nobre de lancers valide");
    print("Combien de lancer avez-vous éffectué? \n");
    nbre = int.parse(stdin.readLineSync()!);
  }
  String reponse;
  int essait_reussi = 0;
  int essait_manque = 0;
  for (int i = 0; i < nbre; i++) {
    stdout.write("lancer numéro ${i + 1} , avez vous toucher la cible? O/N\n");
    reponse = stdin.readLineSync()!;
    while (reponse != "o" && reponse != "n") {
      print("veuillez uniquement sasisir 'o ou n' pour la réponse");
      reponse = stdin.readLineSync()!;
    }
    if (reponse == "o")
      essait_reussi++;
    else if (reponse == "n")
      essait_manque++;
  }
  print("nbre de lancers : $nbre lancers\n");
  print("Nombre de lancers réussit : $essait_reussi\n");
  print("nombre de lances manqués : $essait_manque");
}
