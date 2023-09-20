import 'package:solve_24_game/operator.dart';

abstract class Operation {
  num get value;
}

class RootOperation extends Operation {
  RootOperation(this.value);

  @override
  final num value;

  @override
  String toString() {
    return value.toString();
  }
}

class MathOperationFromValues extends Operation {
  final List<Operation> values;
  final int index1;
  final int index2;
  final Operator operator;

  MathOperationFromValues({
    required this.values,
    required this.index1,
    required this.index2,
    required this.operator,
  });

  int get transformedIndex => index1;

  List<Operation> get transformedValues {
    final transformedValues = <Operation>[];
    for (int i = 0; i < values.length; i++) {
      if (i == index1) {
        transformedValues.add(this);
      } else if (i == index2) {
        continue;
      } else {
        transformedValues.add(values[i]);
      }
    }

    return transformedValues;
  }

  @override
  num get value => operator.operation(values[index1].value, values[index2].value);

  @override
  String toString({noParentheses = false}) {
    if (operator.requiresParentheses && !noParentheses) {
      return "(${values[index1]} $operator ${values[index2]})";
    }

    return "${values[index1]} $operator ${values[index2]}";
  }
}
