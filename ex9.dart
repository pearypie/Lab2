import 'dart:io' show stdin, stdout;

void main() {
  var x;
  stdout.write("Enter number : ");
  x = x ?? stdin.readLineSync();
  int x2 = int.parse(x);
  for (int i = 0; i < x2; i++) {
    for (int j = 0; j < x2; j++) { 
      stdout.write('*');
    }
    print("\n");
  }
}//9
