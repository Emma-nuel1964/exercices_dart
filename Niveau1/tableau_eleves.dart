import 'dart:io';

bool checkNote(double note) {
  return note > 0 && note <= 20;
}

void main() {
  print("saisir les 10 notes");
  List<double> notes = [];
  for (int i = 0; i < 10; i++) {
    double note;
    do {
      print("saisir la notes numéro ${i + 1}");
      note = double.parse(stdin.readLineSync()!);
    } while (!checkNote(note));
    notes.add(note);
  }
  double max = notes[0];
  double min = notes[0];
  for (double i in notes) {
    if (i > max) {
      max = i;
    }
  }
  for (double i in notes) {
    if (i < min) {
      min = i;
    }
  }
  print("toutes les notes\n");
  for (double i in notes) {
    print(i);
  }
  print("\n");
  print("le maximum: $max");
  print("le minimumm: $min");
}
