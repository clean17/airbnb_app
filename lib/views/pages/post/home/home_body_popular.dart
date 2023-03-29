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
          _buildPopularTitle(),
          _buildPopularList()
        ],
      ),
    );
  }

  Widget _buildPopularList() {
    return Wrap( // 줄을 바꿔주는 위젯
          children: [
            HomeBodyPopularItem(id: 0),
            SizedBox(width: 7.5,),
            HomeBodyPopularItem(id: 1),
            SizedBox(width: 7.5,),
            HomeBodyPopularItem(id: 2),
          ],
        );
  }

  Widget _buildPopularTitle() {
    return Column(
      children: [
        Text("한국 숙소게 직접 다녀간 게스트의 후기",
        style: TextStyle(
          fontSize: 24
        ),),

        Text("게스트 후기 2,500,000개 이상, 평균 평점 4.7점(5 만점)",
        style: TextStyle(
          fontSize: 16
        ),),
        SizedBox(height: 10,)

      ],
    );
  }
}
