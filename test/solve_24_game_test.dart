import 'package:solve_24_game/solve_24_game.dart';
import 'package:test/test.dart';

void main() {
  test('example 1', () {
    final solutions = solve([1, 2, 3, 4], 24).toList();

    expect(solutions.length, greaterThan(0));
  });

  test('example 2', () {
    final solutions = solve([24, 12, 10, 1], 24).toList();

    expect(solutions.length, greaterThan(0));
  });

  test('example 3', () {
    final solutions = solve([1, 1], 2).toList();

    expect(solutions.length, greaterThan(0));
  });

  test('example 4', () {
    final solutions = solve([1, 7, 3, 8], 24).toList();

    expect(solutions.length, greaterThan(0));
  });
}
