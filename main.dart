import 'dart:io';

void main() {
  Map menu = {
    1: ["orange juice", 50],
    2: ["banana juice", 25],
    3: ["apple juice", 90],
    4: ["grap juice", 23],
  };

  print(menu);
  print("***********************************");

  print("Wlcome to Fresh shop");
  int total = 0;
  while (true) {
    print("menu is:$menu");
    print("please choose juise nmber");
    int num = int.parse(stdin.readLineSync()!);
    print("please add quantity of juice");
    int numm = int.parse(stdin.readLineSync()!);
    int tott = menu[num][1] * numm;
    total += tott;
    print("your total is $total");
    print("will you add orders (yes/no)?");
    String or = stdin.readLineSync()!;
    if (or == "yes" || or == "Yes") {
      continue;
    } else if (or == "no" || or == "No") {
      print("_____________________");
      print("| your bill is $total|");
      print("_____________________");

      break;
    }
  }
  print("***********************************");
}
