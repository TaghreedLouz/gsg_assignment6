import 'package:flutter/material.dart';
import 'package:gsg_assignment6/model/freelancer_model.dart';
import 'package:gsg_assignment6/widgets/rate_widget.dart';
class BookingSectionWidget extends StatelessWidget {
  const BookingSectionWidget({super.key, required this.serviceImg, required this.model});
  final String serviceImg;
  final FreelancerModel model;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(serviceImg),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 10),
          child: Row(
            children: [
              SizedBox(
                width: 60,
                height: 60,
                child: Image.asset(model.img!, fit: BoxFit.cover),
              ),
              SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(model.name,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                        SizedBox(width: 8),
                        Text(model.jobTitle,style:TextStyle(color: Color(0xff827BEB)) ),
                        Spacer(),
                        RateWidget(rate: model.rate),
                      ],
                    ),
                      SizedBox(
                          width: 220,
                          height: 40,
                          child: Text(model.description!,style:TextStyle(color: Color(0xff1D1F24)))),
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
