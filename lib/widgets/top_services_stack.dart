import 'package:flutter/material.dart';
import 'package:gsg_assignment6/model/freelancer_model.dart';
import 'package:gsg_assignment6/widgets/rate_widget.dart';

class TopServicesStack extends StatelessWidget {
  TopServicesStack({super.key, required this.serviceImg, required this.model});

  final String serviceImg;
  final FreelancerModel model;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 15),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.centerRight,
          children: [
            Container(
              width: 197,
              height: 154,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(serviceImg),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            Positioned(
              right: -160,
              child: Container(
                padding: EdgeInsets.all(10),
                width: 216,
                height: 140,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(model.img!,width: 40,height: 40,),
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: SizedBox(
                          width: 140,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(model.name,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  )),
                              SizedBox(
                                height: 3,
                              ),
                              Text(model.jobTitle,
                                  style: TextStyle(
                                      color: Color(0xff827BEB), fontSize: 12)),
                              SizedBox(
                                height: 3,
                              ),
                              Text(model.description!,
                                  style: TextStyle(
                                      color: Color(0xff6B6B6B), fontSize: 10)),
                              Row(
                                children: [
                                  RateWidget(rate: model.rate),
                                  SizedBox(
                                    width: 3,
                                  ),
                                  ElevatedButton(
                                    onPressed: () {
                                    },
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Color(0xff827BEB),
                                      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(12)
                                      ),
                                      textStyle: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    child: Text("Book Now",style: TextStyle(color: Colors.white),),
                                  )

                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
