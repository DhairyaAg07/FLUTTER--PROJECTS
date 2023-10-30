import 'package:flutter/material.dart';
import 'package:news_app_main/models/category_model.dart'; // Correct import
import 'package:news_app_main/widgets/category_card.dart'; // Correct import

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({Key? key});

  final List<CategoryModel> categories = const [
    CategoryModel(
      image: 'assets/business.avif',
      categoryName: 'Business',
    ),
    // Add other CategoryModel entries here
  ];

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 85,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return CategoryCard(
              category: categories[index],
            );
          },
        ),
      ),
    );
  }
}
