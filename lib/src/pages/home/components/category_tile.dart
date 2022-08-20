import 'package:flutter/material.dart';
import 'package:greengrocer/src/config/custom_colors.dart';

class CategoryTile extends StatelessWidget {
  const CategoryTile({
    Key? key,
    required this.category,
    required this.isSelected,
    required this.onPressed,
  }) : super(key: key);

  final String category;
  final bool isSelected;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(30),
      onTap: onPressed,
      child: Align(
        alignment: Alignment.center,
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 6,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: isSelected ? orangeColor : greenColor,
          ),
          child: Padding(
            padding: const EdgeInsets.all(3),
            child: Text(
              category,
              style: TextStyle(
                color: isSelected ? Colors.white : Colors.grey.shade100,
                fontWeight: FontWeight.bold,
                fontSize: isSelected ? 16 : 14,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
