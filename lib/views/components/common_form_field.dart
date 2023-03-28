import 'package:flutter/material.dart';

class CommonFormField extends StatelessWidget {
  const CommonFormField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        TextFormField(
          textAlignVertical: TextAlignVertical.bottom,
          decoration: InputDecoration(  // 인풋과 박스의 차이는 ?
            contentPadding: EdgeInsets.only(top: 30, left: 20, bottom: 10),
            hintText: AutofillHints.name,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                color: Colors.black,
                width: 2,
              ),
            ),

          ),
        )
      ],
    );
  }
}
