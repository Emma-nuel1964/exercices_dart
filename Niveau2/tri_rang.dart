import 'dart:io';

bool checkChakra(int chakra) => chakra > 0;
void main() {
  print("veuillez saisir le 8 chakra");
  List<int> chakra = [];
  for (int i = 0; i < 8; i++) {
    do {
      print("chakra ${i + 1}");
      chakra.add(int.parse(stdin.readLineSync()!));
    } while (!checkChakra(chakra[i]));
  }
  bool check = true;
  while (check) {
    check = false;
    for (int i = 0; i <= 6; i++) {
      if (chakra[i] > chakra[i + 1]) {
        check = true;
        int temp = chakra[i];
        chakra[i] = chakra[i + 1];
        chakra[i + 1] = temp;
      }
    }
  }
  print(
    "le ninja le plus puissant est le ninja 8 , son chakra est : ${chakra[7]}",
  );
  print(
    "le ninja le moins puissant est le ninja : 1 , son chakra est : ${chakra[0]}",
  );
}
