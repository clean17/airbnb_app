import 'package:flutter/material.dart';

class HomeHeaderForm extends StatelessWidget {
  const HomeHeaderForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment(-0.6   , 0),
      child: Container( // 컨테이너에도 color속성을 사용가능하지만 Decoration속성을 사용하면 Decoration의 color를 사용해야한다. 터짐 !!
        width: 420,
        height: 300,
        color: Colors.white,
      ),
    );
  }
}
