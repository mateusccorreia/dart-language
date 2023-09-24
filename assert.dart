// Using assert for debugging:

//The 'assert' statement in Dart is a powerful tool for ensuring code correctness during development. 

// The syntax of the 'assert' statement is as follows:
//assert(condition, optionalMessage);

void divide(int dividend, int divisor) {
  assert(divisor != 0, 'The divisor cannot be zero.');
  print(dividend / divisor);
}

void main() {  
  divide(10, 2); // Output: 5.0
  divide(10, 0); // Throws AssertionError: The divisor cannot be zero.
}
