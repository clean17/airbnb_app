import 'package:flutter/material.dart';

class HomeHeaderForm extends StatelessWidget {
  const HomeHeaderForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Align(
        alignment: Alignment(-0.6, 0), // -1 ~ 1 까지의 범위가 전체 범위
        child: Container( // 컨테이너에도 color속성을 사용가능하지만 Decoration속성을 사용하면 Decoration의 color를 사용해야한다. 터짐 !!
          width: 420,
          decoration: BoxDecoration(
            color: Colors.white,
                borderRadius: BorderRadius.circular(20),
          ),
          child: Form(
            child: Column(
              children: [

              ],
            ),
          ),
        ),
      ),
    );
  }
}
