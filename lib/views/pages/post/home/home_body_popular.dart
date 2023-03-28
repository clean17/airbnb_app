import 'package:airbnb_app/views/pages/post/home/home_body_popular_item.dart';
import 'package:flutter/material.dart';

class HomeBodyPopular extends StatelessWidget {
  const HomeBodyPopular({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("h1"),
        Text("h2"),
        Wrap(
          children: [
            HomeBodyPopularItem(),
            HomeBodyPopularItem(),
            HomeBodyPopularItem(),
          ],
        )
      ],
    );
  }
}
