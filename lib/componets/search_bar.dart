import 'package:flutter/material.dart';

class SearchBarComponents extends StatelessWidget {
  const SearchBarComponents({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(10),
      ),
      child: const TextField(
        decoration: InputDecoration(
          hintText: 'Search',
          border: InputBorder.none,
          icon: Icon(Icons.search),
        ),
      ),
    );
  }
}
