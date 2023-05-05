import 'package:apprentice/fooderlich_theme.dart';
import 'package:flutter/material.dart';

class Card1 extends StatelessWidget {
  const Card1({super.key});
  final String category = 'Editor\'s Choice';
  final String title = 'The Art of Dough';
  final String description = 'Learn to make the perfect bread.';
  final String chef = 'Ray Wenderlich';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Center(
        child: Stack(
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              constraints: const BoxConstraints.expand(height: 490, width: 390),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    'https://github.com/kodecocodes/flta-materials/blob/editions/3.0/04-understanding-widgets/projects/final/assets/mag1.png?raw=true',
                  ),
                ),
              ),
            ),
            Positioned(
              top: 10,
              left: 12,
              child: Text(
                'Editor’s Choice',
                style: FoodlichTheme.darkTextTheme.bodyLarge,
              ),
            ),
            Positioned(
              left: 12,
              top: 30,
              child: Text(
                'The Art of Doygh',
                style: FoodlichTheme.darkTextTheme.displaySmall,
              ),
            ),
            Positioned(
              right: 12,
              bottom: 30,
              child: Text(
                'learn to make the perfecy bread',
                style: FoodlichTheme.darkTextTheme.bodyLarge,
              ),
            ),
            Positioned(
              bottom: 10,
              right: 12,
              child: Text(
                'Wenderlich',
                style: FoodlichTheme.darkTextTheme.bodyLarge,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
