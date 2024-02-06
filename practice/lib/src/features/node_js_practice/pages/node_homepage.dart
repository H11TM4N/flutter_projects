import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:practice/src/features/navigation/route_names.dart';
import 'package:practice/src/features/practice_app/utils/tile_container.dart';
import 'package:practice/src/shared/widgets/animated_column.dart';

class NodeHomePage extends StatelessWidget {
  const NodeHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Node HomePage'),
      ),
      body: AppAnimatedColumn(
        children: [
          TileContainer(
            onTap: () {
              context.goNamed(RouteNames.bookApp);
            },
            childText: 'Book App',
          ),
          TileContainer(
            onTap: () {},
            childText: 'More practice',
          ),
        ],
      ),
    );
  }
}
