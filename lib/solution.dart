import 'package:solve_24_game/operation.dart';

class Solution {
  Solution(this.lastOperation);

  final MathOperationFromValues lastOperation;

  @override
  String toString() {
    return lastOperation.toString(noParentheses: true);
  }
}
