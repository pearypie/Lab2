import 'dart:ffi';
import 'dart:io' show stdin, stdout;

int main() {
  double? numOne, numTwo, res;
  int? choice;
  do {
    stdout.write("1. Addition\n");
    stdout.write("2. Subtraction\n");
    stdout.write("3. Multiplication\n");
    stdout.write("4. Division\n");
    stdout.write("5. Exit\n\n");
    stdout.write("Enter Your Choice(1-5): ");
    choice = int.parse(stdin.readLineSync()!);
    if (choice! >= 1 && choice <= 4) {
      stdout.write("\nEnter any two Numbers:");
      numOne = double.parse(stdin.readLineSync()!);
      stdout.write("\nEnter any two Numbers:");
      numTwo = double.parse(stdin.readLineSync()!);
    }
    switch (choice) {
      case 1:
        res = addFun(numOne!, numTwo!);
        stdout.write("\nResult = ${res}");
        break;
      case 2:
        res = subFun(numOne!, numTwo!);
        stdout.write("\nResult = ${res}");
        break;
      case 3:
        res = mulFun(numOne!, numTwo!);
        stdout.write("\nResult = ${res}");
        break;
      case 4:
        res = divFun(numOne!, numTwo!);
        stdout.write("\nResult = ${res}");
        break;
      case 5:
        return 0;
      default:
        stdout.write("\nResult = ${res}");
        break;
    }
    stdout.write("\n------------------------\n");
  } while (choice != 5);
  return 0;
}

double addFun(double a, double b) {
  return (b + a);
}

double subFun(double a, double b) {
  return (a - b);
}

double mulFun(double a, double b) {
  return (a * b);
}

double divFun(double a, double b) {
  return (a / b);
}//1