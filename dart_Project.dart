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

void show() {
  if (total == 0) {
    print("\n\n          NO DATA IS ENTERED");
    print("          ******************\n\n\n");
  } else {
    for (int i = 0; i < total; i++) {
      print("\n          DATA OF STUDENT ${i + 1}");
      print("          *****************\n\n");
      print("          Name     :  ${stdName[i]}");
      print("          Roll no  :  ${stdRoll[i]}");
      print("          Subject  :  ${stdSubj[i]}");
      print("          Contact  :  ${stdCont[i]}\n\n\n");
    }
  }
}

void search() {
  if (total == 0) {
    print("\n\n          NO DATA IS ENTERED");
    print("          ******************\n\n\n");
  }
  print("     Press 1 For Search By Student Roll No :");
  print("     Press 2 For Search By Course : ");
  int ans = int.parse(stdin.readLineSync()!);
  if (ans == 1) {
    {
      stdout.write(
          "\n          ENTER THE ROLL NUMBER OF STUDENT WHICH YOU WANT TO SEARCH : ");
      String rollno = stdin.readLineSync()!;
      for (int i = 0; i < total; i++) {
        if (rollno == stdRoll[i]) {
          print("\n          Name     :  ${stdName[i]}");
          print("          Roll no  :  ${stdRoll[i]}");
          print("          Subject  :  ${stdSubj[i]}");
          print("          Contact  :  ${stdCont[i]}\n\n\n");
          print("          ************************");
          print("          * SEARCHING SUCCESSFUL *");
          print("          ************************\n\n");
        }
      }
    }
  } else if (ans == 2) {
    showStudentsByCourse();
  } else {
    print("invalid input");
  }
}
