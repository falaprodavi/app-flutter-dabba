import 'package:flutter/material.dart';

import '../../config/custom_colors.dart';

class AppNameWidget extends StatelessWidget {
  final Color? greenTitleColor;

  const AppNameWidget({
    Key? key,
    this.greenTitleColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        style: const TextStyle(
          fontSize: 28,
          color: kcolorBackground,
        ),
        children: [
          const TextSpan(
            text: 'Dabba',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          TextSpan(
            text: ' Caldos',
            style: TextStyle(
              color: greenTitleColor ?? orangeColor,
            ),
          ),
        ],
      ),
    );
  }
}
