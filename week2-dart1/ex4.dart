import 'dart:io';

void main() {
  List<String> binary = [];
  print('Enter the Decimal Number: ');
  var num = int.parse(stdin.readLineSync()!);
  final i = num;
  final j = i.toRadixString(2);
  print('Equivalent Binary Value: $j');
}
