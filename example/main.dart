import 'package:solve_24_game/solve_24_game.dart';

void main() {
  final solutions = solve([1, 2, 3, 4], 24);

  for (final solution in solutions) {
    print(solution);
  }
}
