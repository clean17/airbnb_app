import 'package:flutter/material.dart';

class HomeBodyPopularItem extends StatelessWidget {
  final id;
  final popularList = [
    "p1.jpeg",
    "p2.jpeg",
    "p3.jpeg",
  ];
  HomeBodyPopularItem({required this.id});

  @override
  Widget build(BuildContext context) {

    double popularItemWidth = MediaQuery.of(context).size.width / 3 -5;
    return Padding(
      padding: const EdgeInsets.only(bottom: 30.0),
      child: Container(
        constraints: BoxConstraints(
          minWidth: 320
        ),
        child: SizedBox(
          width: popularItemWidth,
          child: Column(
            children: [
              Text("ㅅㅅ")
          ],
        ),
        ),

      ),
    );
  }
}
