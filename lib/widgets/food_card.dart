import 'package:flutter/material.dart';
import 'package:tini_food/model/model.dart';

class FoodCard extends StatefulWidget {
  final Model model;
  const FoodCard({super.key, required this.model});

  @override
  State<FoodCard> createState() => _FoodCardState();
}

class _FoodCardState extends State<FoodCard> {
  void initState() {
    super.initState();
    Model.initialiseM();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450,
      width: 156,
      child: Column(
        children: [
          Container(
            height: 156,
            width: 156,
            margin: EdgeInsets.only(bottom: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  widget.model.image,
                ),
              ),
            ),
          ),
          ListTile(
            title: Text(
              widget.model.name,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
            subtitle: Text(widget.model.date,
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                )),
          )
        ],
      ),
    );
  }
}
