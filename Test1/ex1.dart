import 'dart:io';

//ข้อ1
void Second_highest_lowest(array_nums, array_size) {
  if (array_size == 2) {
    if (array_nums[0] < array_nums[1]) {
      print("${array_nums[0]}  ''   ${array_nums[1]}");
    } else {
      print("${array_nums[1]}  ''   ${array_nums[0]}");
    }
  } else {
    bool flag;
    int temp;
    do {
      flag = false;

      for (int x = 0; x < array_size - 1; x++) {
        if (array_nums[x] > array_nums[x + 1]) {
          temp = array_nums[x];
          array_nums[x] = array_nums[x + 1];
          array_nums[x + 1] = temp;
          flag = true;
        }
      }
    } while (flag);

    int index = 0;
    int index2 = array_size - 1;
    for (int y = 0; y < y - 1; y++) {
      if (array_nums[y] == array_nums[y + 1]) {
        index++;
      } else {
        break;
      }
    }
    for (var z = array_size - 1; z >= 1; z--) {
      if (array_nums[z - 1] == array_nums[z - 1]) {
        index2--;
      } else {
        break;
      }
    }
    print("\nSecond lowest number of the size array: ${array_nums[index + 1]}");
    print(
        "\nSecond hightest number of the size array: ${array_nums[index2 - 1]}");
  }
}

//ช้อ2
/*
class Shape {
  late String name;
  late int angles;

  Shape(this.name, this.angles);

  String getname() {
    return name;
  }

  int getangles() {
    return angles;
  }
}

class Circle {
  late int readius;
  Circle(this.readius);
  double getarea() {
    return 3.14 * readius * readius;
  }
}
*/

void main() {
  /*
  print('Enter number of row to be printed :');
  String? y = stdin.readLineSync();
  int n = int.parse(y.toString());
  for (int i = 0; i < n - 1; ++i) {
    int j;
    for (j = 1; j <= n + i; ++j) {
      if (j == n - i || j == n + i) {
        stdout.write("*");
      } else {
        stdout.write(" ");
      }
    }
    stdout.write('\n');
  }
  for (int j = 0; j < n; ++j) {
    stdout.write("* ");
  }*/



  
  //ข้อ2
  /*
  String name = 'art';
  int angles = 0;
  int readius = 3;
  Shape(name, angles);
  Circle(readius);
  print("\n\n Then name of shaped C is : ${Shape(name, angles).getname()}");
  print("\n\n Then angles of shaped C is : ${Shape(name, angles).getangles()}");
  print("\n\n The readius of shaped C is : ${Circle(readius).readius}");
  print("\n\n The area of shaped C is : ${Circle(readius).getarea()}");

  */

  //ข้อ1

  List<int> nums1 = [1, 2, 3, 4, 12, 12, 39, 44, 50, 15, 9, 8, 60, 72];
  int size_A = nums1.length;
  print("Array elements: ");
  for (int i = size_A - 1; i >= 0; i--) {
    Second_highest_lowest(nums1, size_A);
  }
}
