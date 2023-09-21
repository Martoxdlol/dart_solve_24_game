import 'package:solve_24_game/operation.dart';
import 'package:solve_24_game/operator.dart';
import 'package:solve_24_game/solution.dart';
import 'package:trotter/trotter.dart';

Iterable<Solution> solve(Iterable<num> values, num target) {
  final input = values.map(RootOperation.new).toList();

  if (input.length <= 1) {
    throw Exception('Input must have at least 2 values');
  }

  return _solve([], input.toList(), target);
}

Iterable<Solution> _solve(
    List<Operation> stack, List<Operation> values, num expected) sync* {
  final operations = generateOperationsCombinations(values);

  for (final operation in operations) {
    final nextStack = [...stack, operation];

    if (operation.transformedValues.length == 1) {
      if (operation.transformedValues[0].value.toDouble() ==
          expected.toDouble()) {
        yield Solution(nextStack.last as MathOperationFromValues);
      }
    } else {
      yield* _solve(nextStack, operation.transformedValues, expected);
    }
  }
}

Iterable<MathOperationFromValues> generateOperationsCombinations<T>(
    List<Operation> values) sync* {
  final indexes = List<num>.generate(values.length, (i) => i);
  final combinationsIndexes = Permutations(2, indexes);

  for (final combination in combinationsIndexes.iterable) {
    for (final operator in operators) {
      final c1 = combination[0];
      final c2 = combination[1];

      yield MathOperationFromValues(
        index1: c1,
        index2: c2,
        operator: operator,
        values: values,
      );
    }
  }
}
