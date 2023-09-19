class SumOfMultiples {
  // Put your code here
  int sum(List<int> divisors, int points) {
    int sum = 0;
    Set<int> multiples = {};
    for (int i = 0; i < divisors.length; i++) {
      for (int j = 1; j < points; j++) {
        if (j > 0 && j % divisors[i] == 0) {
          if (!multiples.contains(j)) {
            sum += j;
          }
          multiples.add(j);
        }
      }
    }
    return sum;
  }
}
