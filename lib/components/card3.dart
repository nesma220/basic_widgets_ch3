// ignore_for_file: avoid_print

import 'package:apprentice/fooderlich_theme.dart';
import 'package:flutter/material.dart';

class Card3 extends StatelessWidget {
  const Card3({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: const BoxConstraints.expand(
          width: 350,
          height: 350,
        ),
        decoration: BoxDecoration(
          image: const DecorationImage(
              image: NetworkImage(
                'https://github.com/kodecocodes/flta-materials/blob/editions/3.0/03-basic-widgets/projects/final/assets/mag2.png?raw=true',
              ),
              fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.6),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(
                    Icons.book,
                    color: Colors.white,
                    size: 40,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    'Recipe Trends',
                    style: FoodlichTheme.darkTextTheme.bodyMedium,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Center(
              child: Wrap(
                alignment: WrapAlignment.start,
                children: [
                  Chip(
                    label: Text('Healthy',
                        style: FoodlichTheme.darkTextTheme.bodyLarge),
                    backgroundColor: Colors.black.withOpacity(0.7),
                    onDeleted: () {
                      print('Delete');
                    },
                  ),
                  Chip(
                    label: Text(
                      'Vegan',
                      style: FoodlichTheme.darkTextTheme.bodyLarge,
                    ),
                    backgroundColor: Colors.black.withOpacity(0.7),
                    onDeleted: () {
                      print('Delete');
                    },
                  ),
                  Chip(
                    label: Text(
                      'Carrots',
                      style: FoodlichTheme.darkTextTheme.bodyLarge,
                    ),
                    backgroundColor: Colors.black.withOpacity(0.7),
                    onDeleted: () {
                      print('Delete');
                    },
                  ),
                  Chip(
                    label: Text(
                      'Greens',
                      style: FoodlichTheme.darkTextTheme.bodyLarge,
                    ),
                    backgroundColor: Colors.black.withOpacity(0.7),
                    onDeleted: () {
                      print('Delete');
                    },
                  ),
                  Chip(
                    label: Text(
                      'Wheat',
                      style: FoodlichTheme.darkTextTheme.bodyLarge,
                    ),
                    backgroundColor: Colors.black.withOpacity(0.7),
                    onDeleted: () {
                      print('Delete');
                    },
                  ),
                  Chip(
                    label: Text(
                      'Pescetarian',
                      style: FoodlichTheme.darkTextTheme.bodyLarge,
                    ),
                    backgroundColor: Colors.black.withOpacity(0.7),
                    onDeleted: () {
                      print('Delete');
                    },
                  ),
                  Chip(
                    label: Text(
                      'Mint',
                      style: FoodlichTheme.darkTextTheme.bodyLarge,
                    ),
                    backgroundColor: Colors.black.withOpacity(0.7),
                    onDeleted: () {
                      print('Delete');
                    },
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
