import 'dart:io';

List<String> stdName = List.filled(20, '');
List<String> stdRoll = List.filled(20, '');
List<String> stdSubj = List.filled(20, '');
List<String> stdCont = List.filled(20, '');
int total = 0;

void enter() {
  stdout.write("\n\n          HOW MANY STUDENTS YOU WANT TO ENTER?? : ");
  int choice = int.parse(stdin.readLineSync()!);
  if (total == 0) {
    total = choice + total;
    for (int i = 0; i < choice; i++) {
      stdout.write("\n          ENTER THE DATA OF STUDENT ${i + 1}");
      stdout.write("\n          ***************************\n\n");
      stdout.write("          Enter Name     :  ");
      stdName[i] = stdin.readLineSync()!;
      stdout.write("          Enter Roll no  :  ");
      stdRoll[i] = stdin.readLineSync()!;
      stdout.write("          Enter Subject  :  ");
      stdSubj[i] = stdin.readLineSync()!;
      stdout.write("          Enter Contact  :  ");
      stdCont[i] = stdin.readLineSync()!;
    }

    print("");
  } else {
    for (int i = total; i < total + choice; i++) {
      stdout.write("\n          ENTER THE DATA OF STUDENT ${i + 1}");
      stdout.write("          ***************************\n\n");
      stdout.write("          Enter Name     :  ");
      stdName[i] = stdin.readLineSync()!;
      stdout.write("          Enter Roll no  :  ");
      stdRoll[i] = stdin.readLineSync()!;
      stdout.write("          Enter Subject  :  ");
      stdSubj[i] = stdin.readLineSync()!;
      stdout.write("          Enter Contact  :  ");
      stdCont[i] = stdin.readLineSync()!;
    }
    total = choice + total;
  }
}
