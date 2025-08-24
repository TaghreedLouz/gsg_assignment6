
import 'package:flutter/material.dart';
import 'package:gsg_assignment6/widgets/rate_widget.dart';

class TopRatedFreelancesContainerWidget extends StatelessWidget {
  String? img;
  String? name;
  String? jobTitle;
  final double rate;


  TopRatedFreelancesContainerWidget({required this.img, required this.rate, required this.name, required this.jobTitle});

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
                  "$name",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black87,
                  ),
                ),
                Text(
                  "$jobTitle",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 8),
                RateWidget(rate: rate),
              ],
            ),
          ),
        ],
      );
  }
}
