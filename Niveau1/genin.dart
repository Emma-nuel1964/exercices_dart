import 'dart:io';

bool chack_ninja_profil(int age, double chakra) {
  if (age <= 0 || chakra <= 0) return false;
  return true;
}

void main() {
  int age;
  double chakra;
  bool remake = true;
  do {
    stdout.write("veuillez donner votre age");
    age = int.parse(stdin.readLineSync()!);
    stdout.write("veuillez donner le chakra");
    chakra = double.parse(stdin.readLineSync()!);
    if (chack_ninja_profil(age, chakra)) {
      remake = false;
      if (age < 12 && chakra < 50)
        stdout.write("Refusé");
      else if (age >= 12 && chakra < 50)
        stdout.write("chakra insuffisant");
      else if (age < 12 && chakra >= 50)
        stdout.write("age insuffisant");
      else
        stdout.write("accepté");
    }
  } while (remake);
}
