import 'package:flutter/material.dart';
import 'package:snake_game/common/enums.dart';
import 'package:snake_game/widgets/snake.dart';
import 'package:snake_game/widgets/start_button.dart';

class GameBoard extends StatefulWidget {
  const GameBoard({super.key});

  @override
  State<GameBoard> createState() => _GameBoardState();
}

class _GameBoardState extends State<GameBoard> {
  final int _rowCount = 10;
  final int _colCount = 10;

  final List<int> _snakePos = [0, 1, 2, 3];

  Direction snakeDirection = Direction.left;

  void startGame() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 40),
          Expanded(
            child: GridView.builder(
              itemCount: _rowCount * _colCount,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: _colCount),
              itemBuilder: (context, index) {
                if (_snakePos.contains(index)) {
                  return const Snake(lightOn: true);
                } else {
                  return const Snake(lightOn: false);
                }
              },
            ),
          ),
          StartButton(onTap: () {})
        ],
      ),
    );
  }
}
