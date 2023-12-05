import 'package:flutter/material.dart';

class BottomNavBarFb5 extends StatelessWidget {
  const BottomNavBarFb5({Key? key}) : super(key: key);

  final scaffoldColor = const Color(0xffffffff);
  final selectedIconColor = Colors.blue;
  final defaultIconColor = Colors.black;

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: scaffoldColor, // Set the color to the scaffold color
      child: SizedBox(
        height: 20,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.only(left: 10.0, right: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconBottomBar(
                  text: "Home",
                  icon: Icons.home_outlined,
                  selected: true,
                  onPressed: () {}),
              IconBottomBar(
                  text: "Stores",
                  icon: Icons.store_outlined,
                  selected: false,
                  onPressed: () {}),
              IconBottomBar(
                  text: "Order",
                  icon: Icons.description_outlined,
                  selected: false,
                  onPressed: () {}),
              IconBottomBar(
                  text: "Profile",
                  icon: Icons.person_outline_rounded,
                  selected: false,
                  onPressed: () {})
            ],
          ),
        ),
      ),
    );
  }
}

class IconBottomBar extends StatelessWidget {
  const IconBottomBar(
      {Key? key,
      required this.text,
      required this.icon,
      required this.selected,
      required this.onPressed})
      : super(key: key);
  final String text;
  final IconData icon;
  final bool selected;
  final Function() onPressed;

  final selectedIconColor = Colors.blue;
  final defaultIconColor = Colors.black;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: onPressed,
          icon: Icon(
            icon,
            size: 25,
            color: selected ? selectedIconColor : defaultIconColor,
          ),
        ),
        Text(
          text,
          style: TextStyle(
            fontSize: 12,
            height: 0.1,
            color: selected ? selectedIconColor : defaultIconColor,
          ),
        )
      ],
    );
  }
}
