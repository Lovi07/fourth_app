import 'package:flutter/material.dart';
import 'package:fourth_app/widgets/category_item.dart';

import '../dummy_data.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: const EdgeInsets.all(25),
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200, //horizontal height
        childAspectRatio: 3 / 2, // vertical length
        crossAxisSpacing: 20, // horizontal spacing
        mainAxisSpacing: 20, // vertical spacing
      ),
      children: DUMMY_CATEGORIES
          .map(
            (catData) => CategoryItem(
              catData.id,
              catData.title,
              catData.color,
            ),
          )
          .toList(),
    );
  }
}
