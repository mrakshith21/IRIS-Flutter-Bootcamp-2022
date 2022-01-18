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

int sum_of_primes(List<int> arr) {
  int sum = 0;
  for (int i = 0; i < arr.length; i++) {
    if (isPrime(arr[i])) {
      sum += arr[i];
    }
  }
  return sum;
}

void main(List<String> args) {
  print("Enter the array size : ");
  int n = int.parse(stdin.readLineSync()!);
  final input = stdin.readLineSync()!;
  List<int> arr = input.split(" ").map(int.parse).toList();
  int result = sum_of_primes(arr);
  print("The sum of primes in the array = $result");
}
