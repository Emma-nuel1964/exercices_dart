import 'dart:io';

bool chackChakra(int chakra) => chakra > 0;
bool checkRang(String rang) =>
    rang == "chunin" || rang == "jonin" || rang == "genin";
bool checkType(String type) => type == "D" || type == "C" || type == "B";
void main() {
  int chakra;
  String rang = "";
  String type = "";
  do {
    stdout.write("quel est votre rang?");
    rang = stdin.readLineSync()!;
  } while (!checkRang(rang));
  do {
    stdout.write("quel est votre chakra?");
    chakra = int.parse(stdin.readLineSync()!);
  } while (!chackChakra(chakra));

  do {
    stdout.write("quel type de mission souhaité vous ?");
    type = stdin.readLineSync()!;
  } while (!checkType(type));

  //debut du travail de choix;

  switch (type) {
    case "D":
      if (rang == "genin" && chakra >= 30) {
        print("mission aceptée . Salaire: 500 ryos");
        break;
      } else if (rang == "genin" && chakra < 30) {
        print("chakra insuffisant ");
        break;
      } else if (rang != "genin" && chakra >= 30) {
        print("rang insuffisant pour cette mission");
        break;
      } else {
        print("Mission refusée pour les deux raisons");
        break;
      }

    case "C":
      if (rang == "chunin" && chakra >= 60) {
        print("mission aceptée . Salaire: 2000 ryos");
        break;
      } else if (rang == "Chunin" && chakra < 60) {
        print("chakra insuffisant ");
        break;
      } else if (rang != "chunin" && chakra >= 60) {
        print("rang insuffisant pour cette mission");
        break;
      } else {
        print("Mission refusée pour les deux raisons");
        break;
      }
    case "B":
      if (rang == "jonin" && chakra >= 100) {
        print("mission aceptée . Salaire: 8000 ryos");
        break;
      } else if (rang == "jonin" && chakra < 100) {
        print("chakra insuffisant ");
        break;
      } else if (rang != "jonin" && chakra >= 100) {
        print("rang insuffisant pour cette mission");
        break;
      } else {
        print("Mission refusée pour les deux raisons");
        break;
      }
    default:
      print("type de mission indéterminé !!!");
  }
}
