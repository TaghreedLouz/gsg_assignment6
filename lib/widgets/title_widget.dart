import 'package:flutter/material.dart';

class TitleWidget extends StatelessWidget {
  String? title;

  TitleWidget({required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 50,
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [Color(0xffC2D7F2), Color(0xffe9f1fa), Colors.white],
            ),
          ),
          child: Text(
            title ?? "Title",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            "View All",
            style: TextStyle(
                decoration: TextDecoration.underline, color: Color(0xff154883)),
          ),
        ),
      ],
    );
  }
}
