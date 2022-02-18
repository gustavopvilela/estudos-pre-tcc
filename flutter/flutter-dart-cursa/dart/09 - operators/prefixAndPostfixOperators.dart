void main() {
  int a;
  int b;

  a = 0;
  b = ++a; // incrementa 'a' ANTES de b ter o seu valor. a == 1 e b == 1

  a = 0;
  b = a++; // incrementa 'a' DEPOIS de b ter o seu valor. a == 1 e b == 0

  a = 0;
  b = --a; // decrementa 'a' ANTES de b ter o seu valor. a == -1 e b == -1

  a = 0;
  b = a--; // decrementa 'a' DEPOIS de b ter o seu valor. a == -1 e b == 0
}