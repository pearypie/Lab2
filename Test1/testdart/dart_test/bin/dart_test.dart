void Second_highest_lowest(array_nums, var array_size) {
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
    var index2 = array_size;

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
    print(index2);
    print("\nSecond lowest number of the size array: ${array_nums[index + 1]}");
    print(
        "\nSecond hightest number of the size array: ${array_nums[index2 - 2]}");
  }
}

void main() {
  List<int> nums1 = [1, 2, 3, 4, 12, 12, 39, 44, 50, 15, 9, 8, 60, 72];
  int size_A = nums1.length;

  print("Array elements: ${size_A}");
  for (int i = size_A - 1; i >= 0; i--) {
    Second_highest_lowest(nums1, size_A);
  }
}
