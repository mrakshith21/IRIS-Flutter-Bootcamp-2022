import 'dart:io';

import 'dart:math';

bool isPrime(int n) {
  if (n <= 1) {
    return false;
  }
  for (int i = 2; i <= sqrt(n); i++) {
    if (n % i == 0) {
      return false;
    }
  }
  return true;
}

bool semiprime(int n) {
  for (int i = 2; i <= sqrt(n); i++) {
    if (n % i == 0) {
      return isPrime(i) && isPrime(n ~/ i);
    }
  }
  return false;
}

void main(List<String> args) {
  print("Enter a number : ");
  int n = int.parse(stdin.readLineSync()!);
  if (semiprime(n)) {
    print("$n is semiprime");
  } else {
    print("$n is not semiprime");
  }
}
