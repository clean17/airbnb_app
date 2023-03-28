import 'package:airbnb_app/views/pages/post/home/home_body_popular_item.dart';
import 'package:flutter/material.dart';

class HomeBodyPopular extends StatelessWidget {
  const HomeBodyPopular({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Wrap(
            children: [
              HomeBodyPopularItem(id: 0),
              SizedBox(width: 7.5,),
              HomeBodyPopularItem(id: 1),
              SizedBox(width: 7.5,),
              HomeBodyPopularItem(id: 2),
            ],
          )
        ],
      ),
    );
  }
}
