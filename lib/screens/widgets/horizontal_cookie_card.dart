import 'package:docemomento/colors.dart';
import 'package:docemomento/screens/widgets/container_arrow.dart';
import 'package:flutter/material.dart';

import 'premium.dart';

class HorizontalCookieCard extends StatelessWidget {
  const HorizontalCookieCard({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: size.height * 0.14,
          decoration: const BoxDecoration(
            color: buttonColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
              bottomLeft: Radius.circular(15),
              bottomRight: Radius.circular(75),
            ),
          ),
          child: Row(
            children: [
              const Padding(padding: EdgeInsets.all(8)),
              Image.asset(
                'assets/3.png',
                height: 100,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 5),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Text(
                          'Double\nchocolate',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Premium(),
                      ],
                    ),
                    SizedBox(
                      width: 14,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          '20 USD',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            decoration: TextDecoration.lineThrough,
                          ),
                        ),
                        Text(
                          '12 USD',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const Positioned(
          right: 0,
          bottom: 0,
          child: ContainerArrow(),
        ),
      ],
    );
  }
}
