import 'package:exxen_app/ui/view/card_component_widget.dart';
import 'package:flutter/material.dart';

class MovieList extends StatelessWidget {
  MovieList(
      {super.key,
      this.isLastItem = false,
      required this.text2,
      required this.text3,
      required this.text4,
      required this.text5,
      required this.text6,
      required this.image,
      required this.image2,
      required this.image3,
      required this.image4});

  final String text2;
  final String text3;
  final String text4;
  final String text5;
  final String text6;
  final Widget image;
  final Widget image2;
  final Widget image3;
  final Widget image4;
  bool isLastItem;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 16, top: 0, bottom: isLastItem ? 0 : 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text2,
            style: const TextStyle(color: Colors.white, fontSize: 20),
          ),
          SizedBox(
              height: 250,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  CardComponent(text: text3, child: image),
                  CardComponent(text: text4, child: image2),
                  CardComponent(text: text5, child: image3),
                  CardComponent(isLast: true, text: text6, child: image4),
                ],
              ))
        ],
      ),
    );
  }
}
