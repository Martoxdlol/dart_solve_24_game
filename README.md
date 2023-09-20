# 24 Game Solver

## The 24 game

[24 (game) - Wikipedia](https://es.wikipedia.org/wiki/24_(juego_de_cartas))

The 24 puzzle is an arithmetical puzzle in which the objective is to find a way to manipulate four integers so that the end result is 24. For example, for the numbers 4, 7, 8, 8, a possible solution is 
(7 − (8 ÷ 8)) × 4 = 24

## This solver

This solver can handle any number of cards (with any number in it) and any target number.

## Usage
```dart
import 'package:solve_24_game/solve_24_game.dart';

void main() {
  final solutions = solve([1, 2, 3, 4], 24);

  for (final solution in solutions) {
    print(solution);
  }
}
```

## Cli usage

Activate: `dart pub global activate solve_24_game`

Usage: `solve_24_game <number> <number> <number> <number> [= <expected result>]`

Example: `solve_24_game 1 2 3 4 = 24`

Using pub: `dart pub global run solve_24_game 1 2 2 = 5`

## Example 1

Input: `10 20 30 40 50`

Target: 500

Solutions:

```
10 * 20 - 30 * (40 - 50) = 500
(10 * 30 - 50) / 20 * 40 = 500
(10 * 30 - 50) * 40 / 20 = 500
(10 * 30 - 50) / 20 / 40 = 500
(10 * 30 - 50) / 20 / 40 = 500
10 * 30 - 20 * (40 - 50) = 500
...
```

## Example 2

Input: `6.5 7.3 8.4`

Target: 22.2

Solutions:

```
(6.5 + 8.4) + 7.3 = 22.2
6.5 + (7.3 + 8.4) = 22.2
```
