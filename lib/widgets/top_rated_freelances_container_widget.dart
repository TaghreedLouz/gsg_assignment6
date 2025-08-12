
import 'package:flutter/material.dart';

class TopRatedFreelancesContainerWidget extends StatelessWidget {
  String? img;


  TopRatedFreelancesContainerWidget({required this.img});

  @override
  Widget build(BuildContext context) {
    return
      Stack(
        alignment: Alignment.topCenter,
        children: [
          CircleAvatar(
            radius: 40,
            backgroundImage: AssetImage(img!),
          ),
          Container(
            height: 100,
            margin:  EdgeInsets.only(top: 70),
            padding:  EdgeInsets.symmetric(horizontal: 8, vertical: 6),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
              ],
            ),
            child: Column(
              children: [
                Text(
                  "Wade Warren",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black87,
                  ),
                ),
                Text(
                  "Beautician",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 8),
                Container(
                  padding:  EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: Color(0xff827BEB).withOpacity(0.12),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children:  [
                      Image.asset("assets/star.png"),
                      SizedBox(width: 4),
                      Text(
                        "4.9",
                        style: TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      );
  }
}
