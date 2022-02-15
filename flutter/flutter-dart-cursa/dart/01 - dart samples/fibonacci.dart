import 'dart:io';

// Dart é uma linguagem recursiva

int fibonacci(int n) {
  if (n == 0 || n == 1) {
    return n;
  }
  
  int fibo = fibonacci(n - 1) + fibonacci(n - 2);

  return fibo;
}

void main() {
  print('Digite o número para a Sequência de Fibonacci:');
  int n = int.parse(stdin.readLineSync()!);
  
  print('O resultado é ${fibonacci(n)}');
}