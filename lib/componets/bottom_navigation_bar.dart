import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onItemTapped;

  const CustomBottomNavigationBar({
    super.key,
    required this.selectedIndex,
    required this.onItemTapped,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: const BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(40),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildNavItem(
            icon: Icons.home_filled,
            index: 0,
          ),
          _buildNavItem(
            icon: Icons.favorite_border,
            index: 1,
          ),
          _buildNavItem(
            icon: Icons.notifications_none,
            index: 2,
          ),
          _buildNavItem(
            icon: Icons.shopping_cart_checkout,
            index: 3,
          ),
        ],
      ),
    );
  }

  Widget _buildNavItem({required IconData icon, required int index}) {
    return GestureDetector(
      onTap: () => onItemTapped(index),
      child: Container(
        padding:
            const EdgeInsets.only(top: 10, bottom: 25, left: 20, right: 20),
        child: Icon(
          icon,
          color: Colors.white,
          size: 24,
        ),
      ),
    );
  }
}
