import 'package:flutter/material.dart';

class IngredientsContainer extends StatelessWidget {
  const IngredientsContainer({
    super.key,
    required this.imagePath,
    required this.color,
  });

  final String imagePath;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 70,
          height: 70,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(10),
            boxShadow: const [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 5,
                spreadRadius: 2,
              ),
            ],
          ),
          child: Image(
            image: AssetImage(imagePath),
          ),
        )
      ],
    );
  }
}
