import 'package:flutter/material.dart';

class CookiesBar extends StatelessWidget {
  const CookiesBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Column(
          children: [
            Text(
          'Cookies',
          style: TextStyle(
            color: Colors.white,
            fontSize: 35,
          ),
        ),
        Text(
          'Premium',
          style: TextStyle(
            color: Colors.orange,
            fontSize: 28,
          ),
        ),
          ],
        ),
        Text(
          'See more',
          style: TextStyle(
            color: Colors.orange,
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}
