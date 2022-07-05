import 'dart:io' show stdin,stdout;

int main (List<String> arguments){
  int binaryNum,decimalNum;
  stdout.write('Enter the Decimal Number: ');
  decimalNum = int.parse(stdin.readLineSync()!);
  binaryNum = DecimalTobinary(decimalNum);
  print('Equivalent Binary Value: ${binaryNum}');
  return 0;
  }

int DecimalTobinary(int decimalNum){
  int binaryNum=0,mul=1,rem;
  while(decimalNum>0){
    rem = decimalNum%2;
    binaryNum = binaryNum+(remmul).toInt();
    mul = mul10;
    decimalNum = (decimalNum/2).floor();
  }
  return binaryNum;

}