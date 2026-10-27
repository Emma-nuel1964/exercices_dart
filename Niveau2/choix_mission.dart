import 'dart:io';

bool chackChakra(int chakra) => chakra > 0;
bool checkRang(String rang) =>
    rang == "genin" || rang == "chunin" || rang == "jonin";
bool checkType(String type) => type == "D" || type == "C" || type == "B";
void main() {
  int chakra;
  String rang = "";
  String type = "";
  do {
    stdout.write("quel est votre rang?");
    String rang = stdin.readLineSync()!;
  } while (checkRang(rang));
  do {
    stdout.write("quel est votre chakra?");
    chakra = int.parse(stdin.readLineSync()!);
  } while (!chackChakra(chakra));

  do {
    stdout.write("quel type de mission souhaité vous ?");
    String type = stdin.readLineSync()!;
  } while (checkType(type));
  //debut du travail de choix;
}
