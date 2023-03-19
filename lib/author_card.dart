import 'package:apprentice/card2.dart';
import 'package:apprentice/fooderlich_theme.dart';
import 'package:flutter/material.dart';

class AuthorCard extends StatelessWidget {
  const AuthorCard(
      {super.key,
      this.imageProvider,
      required this.title,
      required this.authorName});

  final String authorName;
  final String title;
  final ImageProvider? imageProvider;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleImage(
            imageProvider: imageProvider,
            imageRadius: 28,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                authorName,
                style: FoodlichTheme.lightTextTheme.displayMedium,
              ),
              Text(
                title,
                style: FoodlichTheme.lightTextTheme.displaySmall,
              )
            ],
          ),
          const SizedBox(
            width: 22,
          ),
          IconButton(
            onPressed: () {
              const snackbar = SnackBar(content: Text('Favorite Pressed'));
              ScaffoldMessenger.of(context).showSnackBar(snackbar);
            },
            icon: const Icon(
              Icons.favorite_border,
              color: Colors.grey,
              size: 30,
            ),
          ),
        ],
      ),
    );
  }
}
