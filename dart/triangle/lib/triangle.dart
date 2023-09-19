class Triangle {
  bool isosceles(double a, double b, double c) {
    return a == b || b == c || a == c;
  }

  bool equilateral(double a, double b, double c) {
    return a == b && b == c;
  }

  bool scalene(double a, double b, double c) {
    return a != b && b != c && a != c;
  }

  // Put your code here
}
