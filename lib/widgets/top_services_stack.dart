import 'package:flutter/material.dart';
import 'package:gsg_assignment6/widgets/rate_widget.dart';

class TopServicesStack extends StatelessWidget {
  const TopServicesStack({super.key, required this.serviceImg, required this.userImg});
  final String serviceImg;
  final String userImg;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 15),
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
                height: 130,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                  Image.asset("$userImg"),
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: SizedBox(
                      width: 140,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Text("Miss Zachary Will",style: TextStyle(fontWeight: FontWeight.bold,)),
                          SizedBox(height: 3,),
                          Text("Beautician",style: TextStyle(color: Color(0xff827BEB),fontSize: 12)),
                          SizedBox(height: 3,),
                          Text("'Doloribus saepe aut necessit qui non qui.'",style: TextStyle(color: Color(0xff6B6B6B),fontSize: 10)),
                          Row(children: [
                          RateWidget(rate: 3.5),
                          SizedBox(width: 3,),
                          ElevatedButton(onPressed: () {}, child: Text("Book Now"),style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Color(0xff827BEB)),
                            textStyle: MaterialStateProperty.all(TextStyle(fontSize: 11),),
                            shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(12),)
                              ),),),
                        ],)
                      ],),
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