import 'package:flutter/material.dart';

class HorizontalCarousel extends StatelessWidget {
  const HorizontalCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 4,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          margin: const EdgeInsets.all(8),
          height: MediaQuery.of(context).size.height / 4.2,
          width: MediaQuery.of(context).size.width / 1.1,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/L.png'),
                  fit: BoxFit.contain)),
        );
      },
    );
  }
}
