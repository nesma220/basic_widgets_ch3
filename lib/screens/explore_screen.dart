import 'package:apprentice/api/mock_fooderlich_service.dart';
import 'package:apprentice/models/explore_data.dart';
import 'package:flutter/material.dart';

class ExploreScreen extends StatelessWidget {
  ExploreScreen({super.key});
  final mockService = MockFooderlichService();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: mockService.getExploreData(),
      builder: (context, AsyncSnapshot<ExploreData> snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return Center(
            child: Container(
              child: const Text('Show TodayRecipeListView'),
            ),
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
