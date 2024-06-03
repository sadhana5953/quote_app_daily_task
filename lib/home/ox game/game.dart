import 'dart:ffi';
import 'dart:io';

void user1() {
  stdout.write("User X : ");
  x = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < 9; i++) {
    if (a[i] == x) {
      a[i] = 'X';
    }
  }

  print('\n${a[0]}  | ${a[1]} | ${a[2]}');
  print('---|---|---');
  print('${a[3]}  | ${a[4]} | ${a[5]}');
  print('---|---|---');
  print('${a[6]}  | ${a[7]} | ${a[8]}');
  if (a[0] == 'X' && a[3] == 'X' && a[6] == 'X') {
    print("User X wins");
    for (int i = 0; i < 1; i++) {
      break;
    }
  } else if (a[1] == 'X' && a[4] == 'X' && a[7] == 'X') {
    print("User X wins");
    for (int i = 0; i < 1; i++) {
      break;
    }
  } else if (a[2] == 'X' && a[5] == 'X' && a[8] == 'X') {
    print("User X wins");
    for (int i = 0; i < 1; i++) {
      break;
    }
  } else if (a[0] == 'X' && a[1] == 'X' && a[2] == 'X') {
    print("User X wins");
    for (int i = 0; i < 1; i++) {
      break;
    }
  } else if (a[3] == 'X' && a[4] == 'X' && a[5] == 'X') {
    print("User X wins");
    for (int i = 0; i < 1; i++) {
      break;
    }
  } else if (a[6] == 'X' && a[7] == 'X' && a[8] == 'X') {
    print("User X wins");
    for (int i = 0; i < 1; i++) {
      break;
    }
  } else if (a[0] == 'X' && a[4] == 'X' && a[8] == 'X') {
    print("User X wins");
    for (int i = 0; i < 1; i++) {
      break;
    }
  } else if (a[2] == 'X' && a[4] == 'X' && a[6] == 'X') {
    print("User X wins");
    for (int i = 0; i < 1; i++) {
      break;
    }
  } else {
    int ch = 0;
    for (int i = 0; i < 9; i++) {
      if (a[i] == i + 1) {
        ch++;
      }
    }
    if (ch > 0) {
      user2();
    } else {
      print('The game is draw.');
    }
  }
}

void user2() {
  stdout.write("User O : ");
  x = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < 9; i++) {
    if (a[i] == x) {
      a[i] = 'O';
    }
  }

  print('\n${a[0]}  | ${a[1]} | ${a[2]}');
  print('---|---|---');
  print('${a[3]}  | ${a[4]} | ${a[5]}');
  print('---|---|---');
  print('${a[6]}  | ${a[7]} | ${a[8]}');

  if (a[0] == 'O' && a[3] == 'O' && a[6] == 'O') {
    print("User O wins");
    for (int i = 0; i < 1; i++) {
      break;
    }
  } else if (a[1] == 'O' && a[4] == 'O' && a[7] == 'O') {
    print("User O wins");
    for (int i = 0; i < 1; i++) {
      break;
    }
  } else if (a[2] == 'O' && a[5] == 'O' && a[8] == 'O') {
    print("User O wins");
    for (int i = 0; i < 1; i++) {
      break;
    }
  } else if (a[0] == 'O' && a[1] == 'O' && a[2] == 'O') {
    print("User O wins");
    for (int i = 0; i < 1; i++) {
      break;
    }
  } else if (a[3] == 'O' && a[4] == 'O' && a[5] == 'O') {
    print("User O wins");
    for (int i = 0; i < 1; i++) {
      break;
    }
  } else if (a[6] == 'O' && a[7] == 'O' && a[8] == 'O') {
    print("User O wins");
    for (int i = 0; i < 1; i++) {
      break;
    }
  } else if (a[0] == 'O' && a[4] == 'O' && a[8] == 'O') {
    print("User O wins");
    for (int i = 0; i < 1; i++) {
      break;
    }
  } else if (a[2] == 'O' && a[4] == 'O' && a[6] == 'O') {
    print("User O wins");
    for (int i = 0; i < 1; i++) {
      break;
    }
  } else {
    int ch = 0;
    for (int i = 0; i < 9; i++) {
      if (a[i] == i + 1) {
        ch++;
      }
    }
    if (ch > 0) {
      user1();
    } else {
      print('game is tie');
    }
  }
}

List a = [1, 2, 3, 4, 5, 6, 7, 8, 9];
int x = 0;
void main() {
  print('${a[0]}  | ${a[1]} | ${a[2]}');
  print('---|---|---');
  print('${a[3]}  | ${a[4]} | ${a[5]}');
  print('---|---|---');
  print('${a[6]}  | ${a[7]} | ${a[8]}');

  print('Enter number:');
  user1();
}