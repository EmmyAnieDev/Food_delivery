import 'package:flutter/material.dart';

import 'ingredients_container.dart';

class IngredientsContainerRow extends StatelessWidget {
  const IngredientsContainerRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IngredientsContainer(
          imagePath: 'assets/images/egg.png',
          color: Colors.purpleAccent.shade100,
        ),
        IngredientsContainer(
          imagePath: 'assets/images/beef.png',
          color: Colors.blue.shade100,
        ),
        IngredientsContainer(
          imagePath: 'assets/images/onion.png',
          color: Colors.amber.shade100,
        ),
        IngredientsContainer(
          imagePath: 'assets/images/tomatoes.png',
          color: Colors.pink.shade100,
        ),
      ],
    );
  }
}
