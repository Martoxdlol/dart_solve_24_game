import 'package:solve_24_game/solve_24_game.dart';

final usage = "Usage: solve_24_game <number> <number> <number> <number> [= <expected result>]";

void main(List<String> arguments) {
  final input = <num>[];

  num expected = 24;

  bool nextIsExpected = false;

  try {
    for (final arg in arguments) {
      if (arg.length > 1 && arg.startsWith("=")) {
        expected = num.parse(arg.substring(1));
        break;
      }

      if (arg == '=') {
        nextIsExpected = true;
      } else if (nextIsExpected) {
        expected = num.parse(arg.trim());
        break;
      } else {
        input.add(num.parse(arg.trim()));
      }
    }
  } catch (e) {
    print(usage);
    return;
  }

  final solutions = solve(input, expected).toList();

  if (input.isEmpty) {
    print(usage);
    return;
  }

  for (var e in solutions) {
    print("$e = $expected");
  }

  print("Has solution: ${solutions.isNotEmpty}");
}
