import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class DescriptionText extends StatelessWidget {
  const DescriptionText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const ReadMoreText(
      'Double Burger is a delicious burger with two beef patties, lettuce, tomato, pickles, onions, and cheese. It is served with a side of fries and a drink.',
      trimLines: 3,
      colorClickableText: Colors.red,
      trimMode: TrimMode.Line,
      trimCollapsedText: 'Read More',
      trimExpandedText: ' Show Less',
      style: TextStyle(
        fontSize: 16,
        color: Colors.black54,
      ),
      moreStyle: TextStyle(
        fontSize: 16,
        color: Colors.red,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
