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
    double popularItemWidth = MediaQuery
        .of(context)
        .size
        .width * 0.7 / 3 - 5;
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
                _buildPopularItemImge(),
                _buildPopularItemImgeStar(),
                SizedBox(height: 10,),
                _buildPopularItemImgeComment(),
                _buildPopularItemImgeUserInfo(),
              ],
            ),
          )


      ),
    );
  }

  Widget _buildPopularItemImge() {
    return Column(
      children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Image.asset("assets/${popularList[id]}",
              fit: BoxFit.cover,)
        )
      ],
    );
  }

  Widget _buildPopularItemImgeStar() {
    return Row(
      children: [
        Icon(Icons.star, color: Colors.redAccent,),
        Icon(Icons.star, color: Colors.redAccent,),
        Icon(Icons.star, color: Colors.redAccent,),
        Icon(Icons.star, color: Colors.redAccent,),
        Icon(Icons.star, color: Colors.redAccent,),
      ],
    );
  }

  Widget _buildPopularItemImgeComment() {
    return Container(
      child: Text("깔끔하고 다 갖춰져있어서 좋았어요 위치도 완전 좋아용 다들 여기 살고 싶다구 ㅋㅋㅋㅋㅋㅋ 화장실도 3개에요 !!! 5명이서 씻는것도 전혀 불편함없이 좋았어요 ^^ 이불도 포근하고 좋습니다. ㅎㅎ",
        style: TextStyle(fontSize: 20),
        maxLines: 3,
        overflow: TextOverflow.ellipsis,),
    );
  }

  Widget _buildPopularItemImgeUserInfo() {
    return Row(
      children: [
        CircleAvatar(
          backgroundImage: AssetImage("assets/p1.jpeg"),
        ),
        SizedBox(width: 10,),
        Column(
          children: [
            Text("데어", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
            Text("한국", style: TextStyle(fontSize: 16,)
            ),
          ],
        )
      ],
    );
  }

}