import 'package:apprentice/components/author_card.dart';
import 'package:apprentice/fooderlich_theme.dart';
import 'package:flutter/material.dart';

class Card2 extends StatelessWidget {
  const Card2({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: const BoxConstraints.expand(
          width: 380,
          height: 480,
        ),
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    'https://github.com/kodecocodes/flta-materials/blob/editions/3.0/03-basic-widgets/projects/starter/assets/mag5.png?raw=true'),
                fit: BoxFit.cover),
            borderRadius: BorderRadius.all(Radius.circular(16))),
        child: Column(
          children: [
            const AuthorCard(
              authorName: 'Mike Katz',
              title: 'Smoothie Connoisseur',
              imageProvider: NetworkImage(
                  'https://github.com/kodecocodes/flta-materials/blob/editions/3.0/03-basic-widgets/projects/starter/assets/author_katz.jpeg?raw=true'),
            ),
            Expanded(
              child: Stack(
                children: [
                  Positioned(
                    bottom: 16,
                    right: 16,
                    child: Text(
                      'Recipe',
                      style: FoodlichTheme.lightTextTheme.displayMedium,
                    ),
                  ),
                  Positioned(
                    bottom: 70,
                    left: 16,
                    child: RotatedBox(
                      quarterTurns: 3,
                      child: Text(
                        'Smoothies',
                        style: FoodlichTheme.lightTextTheme.displayMedium,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CircleImage extends StatelessWidget {
  const CircleImage({super.key, this.imageProvider, this.imageRadius = 20});

  final ImageProvider? imageProvider;

  final double imageRadius;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          backgroundColor: Colors.white,
          radius: imageRadius,
          child: CircleAvatar(
            backgroundImage: imageProvider,
            radius: imageRadius - 5,
          ),
        )
      ],
    );
  }
}
