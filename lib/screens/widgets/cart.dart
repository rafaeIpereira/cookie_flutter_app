import 'package:flutter/material.dart';

class Cart extends StatelessWidget {
  const Cart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(clipBehavior: Clip.none, children: [
      Container(
        height: 80,
        width: 80,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(15)),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 8,
            ),
            Text(
              '6',
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Products',
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
      Positioned(
        top: -16,
        left: 80 / 4,
        child: Container(
          height: 39,
          width: 39,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.black,
          ),
          child: const Icon(
            Icons.shopping_bag_outlined,
            color: Colors.white,
          ),
        ),
      )
    ]);
  }
}
