import 'package:flutter/material.dart';

import '../widgets/game_card.dart';

class GamesList extends StatelessWidget {
  const GamesList({
    super.key,
    required this.gamesList,
  });

  final List<String> gamesList;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 2,
        itemBuilder: (context, index) {
          return GameCard(
            gameTitle: gamesList[index],
            imageIndex: index + 1,
          );
        },
      ),
    );
  }
}
