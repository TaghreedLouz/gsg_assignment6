import 'package:flutter/material.dart';
import 'package:gsg_assignment6/model/freelancer_model.dart';
import 'package:gsg_assignment6/routes.dart';
import 'package:gsg_assignment6/widgets/rate_widget.dart';

class TopRatedFreelancesContainerWidget extends StatelessWidget {
  final FreelancerModel model;

  TopRatedFreelancesContainerWidget({required this.model});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, Routes.freelancerDetails,
            arguments: model);
      },
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          CircleAvatar(
            radius: 40,
            backgroundImage: AssetImage(model.img!),
          ),
          Container(
            height: 100,
            margin: EdgeInsets.only(top: 70),
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 6),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [],
            ),
            child: Column(
              children: [
                Text(
                  model.name,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black87,
                  ),
                ),
                Text(
                  model.jobTitle,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 8),
                RateWidget(rate: model.rate),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
