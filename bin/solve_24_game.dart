import 'package:solve_24_game/solve_24_game.dart';

void main(List<String> arguments) {
  final input = arguments.map(int.parse);

  final solutions = solve(input, 24).toList();

  print(solutions);

  print("Has solution: ${solutions.isNotEmpty}");
}
