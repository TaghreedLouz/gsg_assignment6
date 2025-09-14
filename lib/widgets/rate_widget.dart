import 'package:flutter/material.dart';

class RateWidget extends StatelessWidget {
  final double rate;
  final Color? color;

  RateWidget({required this.rate, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: color ?? Color(0xff827BEB).withOpacity(0.12),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset("assets/star.png"),
          SizedBox(width: 4),
          Text(
            "$rate",
            style: TextStyle(
              color: Colors.black87,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
