import 'dart:io';

class Age {
  Age._();

  static final Age age = Age._();

  final int year = DateTime.now().year;
  int month = DateTime.now().month;
  int day = DateTime.now().day;

  late int birthYear;
  late int birthMonth;
  late int birthDay;

  late int nextBirthDay;
  late int nextBirthMonth;

  late int calculatedDay;
  late int calculatedMonth;
  late int calculatedYear;

  List<int> monthsDay = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];

  void setAge() {
    stdout.write("Enter your Birth day : ");
    birthDay = int.parse(stdin.readLineSync()!);
    stdout.write("Enter your Birth month : ");
    birthMonth = int.parse(stdin.readLineSync()!);
    stdout.write("Enter your Birth year : ");
    birthYear = int.parse(stdin.readLineSync()!);
    

    if (birthMonth <= 12 && birthDay <= 31 && birthYear.bitLength <= 4) {
      calculateAge();
    }
    else{
      print("Invalid input.....");
    }
  }

  // Calculate year
  void calculateAge() {
    int tempDay = day;
    int tempMonth = month;
    int tempYear = year;

    if (birthDay > day) {
      tempMonth--;
      tempDay += monthsDay[birthMonth - 1];
      if (birthMonth == month) {
        tempYear--;
        tempMonth += 12;
      }
    }

    if (birthMonth > month) {
      tempYear--;
      tempMonth += 12;
    }

    calculatedYear = tempYear - birthYear;
    calculatedMonth = tempMonth - birthMonth;
    calculatedDay = tempDay - birthDay;

    if (day > birthDay) {
      tempMonth--;
      tempDay += monthsDay[month - 1];
      if (month == birthMonth) {
        tempMonth += 12;
      }
    }

    if (month > birthMonth) {
      tempMonth += 12;
    }
    nextBirthMonth = (tempMonth - month);
    nextBirthDay = (tempDay - month);

    getAge();
  }

  void getAge() {
    print("Your Age is calculated....");
    print("==========================");
    print(
        "Year : $calculatedYear, Month : $calculatedMonth, Day : $calculatedDay,");
    print("==========================");
    print("\n\nYour Next Birthday is ...");
    print("==========================");
    print("Month : $nextBirthMonth, Day : $nextBirthDay");
    print("==========================\n\n");
  }
}
