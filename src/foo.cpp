extern "C" {
  void bar(double x);
}

void baz(double x) {
  bar(x);
}
