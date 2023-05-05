import 'package:apprentice/models/explore_recipe.dart';
import 'package:flutter/material.dart';

class TodayRecipeListView extends StatelessWidget {
  const TodayRecipeListView({super.key, required this.recipes});

  final List<ExploreRecipe> recipes;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 16,
        right: 16,
        top: 16,
      ),
      child: Column(
        children: [
          Text(
            'Recipes of the Day "',
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          const SizedBox(height: 16),
          Container(
            height: 400,
            // TODO: Add ListView Here
            color: Colors.grey,
          ),
        ],
      ),
    );
  }
}
