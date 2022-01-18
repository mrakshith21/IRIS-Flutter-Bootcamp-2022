import 'dart:io';

void fibonacci(int n) {
  int a = 0, b = 1, c;
  for (int i = 1; i <= n; i++) {
    stdout.write("$a ");
    c = a + b;
    a = b;
    b = c;
  }
}

void main(List<String> args) {
  print("Enter the value of N : ");
  int n = int.parse(stdin.readLineSync()!);
  fibonacci(n);
}
