class Operator {
  final String symbol;
  final num Function(num, num) operation;

  final bool requiresParentheses;

  const Operator(this.symbol, this.operation, {this.requiresParentheses = false});

  @override
  String toString() => symbol;
}

List<Operator> operators = [
  Operator("+", (a, b) => a + b, requiresParentheses: true),
  Operator("-", (a, b) => a - b, requiresParentheses: true),
  Operator("*", (a, b) => a * b),
  Operator("/", (a, b) => a / b),
];
