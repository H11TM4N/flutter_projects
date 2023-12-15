import 'dart:async';

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

  late Timer _timer;

  final List<int> _snakePos = [0, 1, 2, 3];

  Direction _snakeDirection = Direction.right;

  void startGame() {
    _timer = Timer.periodic(const Duration(milliseconds: 500), (Timer timer) {
      moveSnake();
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 40),
          Expanded(
            child: GestureDetector(
              onVerticalDragUpdate: onVerticalDragUpdate,
              onHorizontalDragUpdate: onHorizontalDragUpdate,
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
          ),
          StartButton(
            onTap: startGame,
          )
        ],
      ),
    );
  }

  void onHorizontalDragUpdate(details) {
    if (details.primaryDelta! > 0 && _snakeDirection != Direction.left) {
      _snakeDirection = Direction.right;
    } else if (details.primaryDelta! < 0 &&
        _snakeDirection != Direction.right) {
      _snakeDirection = Direction.left;
    }
  }

  void onVerticalDragUpdate(details) {
    if (details.primaryDelta! > 0 && _snakeDirection != Direction.up) {
      _snakeDirection = Direction.down;
    } else if (details.primaryDelta! < 0 && _snakeDirection != Direction.down) {
      _snakeDirection = Direction.up;
    }
  }

  void moveSnake() {
    int head = _snakePos.first;

    switch (_snakeDirection) {
      case Direction.up:
        head -= _colCount;
        break;
      case Direction.down:
        head += _colCount;
        break;
      case Direction.left:
        head -= 1;
        break;
      case Direction.right:
        head += 1;
        break;
    }

    // Update the snake's position
    _snakePos.insert(0, head);

    // Remove the last segment of the snake
    if (_snakePos.length > 4) {
      _snakePos.removeLast();
    }
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }
}
