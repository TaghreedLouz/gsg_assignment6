import 'package:flutter/material.dart';
import 'package:gsg_assignment6/model/freelancer_model.dart';
import 'package:gsg_assignment6/widgets/rate_widget.dart';

class RecommendedWorkshopsWidget extends StatelessWidget {
  const RecommendedWorkshopsWidget({super.key,required this.model, required this.serviceImg});

  final FreelancerModel model;
  final String serviceImg;


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 800,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        elevation: 3,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16),
                  ),
                  child: Image.asset(
                    serviceImg,
                    height: 120,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  right: 8,
                  top: 8,
                  child:RateWidget(rate: model.rate,color: Colors.white70),
                ),
              ],
            ),

             Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    model.name,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  SizedBox(height: 4),
                  Text(
                    model.jobTitle,
                    style: TextStyle(color: Color(0xff827BEB)),
                  ),
                  SizedBox(height: 6),
                  Text(
                    model.description??"",
                    maxLines: 2,
                    style: TextStyle(fontSize: 12, color: Color(0xff1D1F24)),
                  ),
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff827BEB),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                  ),
                  child: Text("Book Workshop",style: TextStyle(color: Colors.white),),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}