import 'package:flutter/material.dart';

class CardComponent extends StatelessWidget {
  CardComponent(
      {super.key,
      required this.text,
      required this.child,
      this.isLast = false});
  final String text;
  final Widget child;
  bool isLast;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: isLast ? 0 : 15),
      child: Container(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(child: child),
          Text(
            text,
            style: TextStyle(color: Colors.grey.shade200),
          )
        ],
      )),
    );
  }
}
