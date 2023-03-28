import 'package:flutter/material.dart';

class HomeBodyPopularItem extends StatelessWidget {
  const HomeBodyPopularItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        color: Colors.red,
        width: 350,
        height: 350,
      ),
    );
  }
}
