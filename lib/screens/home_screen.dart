import 'package:flutter/material.dart';
import 'package:gsg_assignment6/widgets/title_widget.dart';
import 'package:gsg_assignment6/widgets/top_services_stack.dart';

import '../widgets/top_rated_freelances_container_widget.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(Icons.menu, color: Colors.black),
        title: Image.asset("assets/logo.png"),
        actions: [
          Image.asset("assets/bell.png"),
          Image.asset("assets/cart.png"),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 12),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: Colors.grey.shade300),
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.search, color: Colors.grey.shade600),
                          SizedBox(width: 8),
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: "Search here",
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  SizedBox(width: 8),
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Colors.grey.shade300),
                    ),
                    child: Icon(Icons.filter_list, color: Colors.grey.shade600),
                  ),
                ],
              )

            ),
            SizedBox(
              height: 12,
            ),
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.centerRight,
                  end: Alignment.centerLeft,
                  colors: [Color(0xffC2D7F2), Colors.white],
                ),
              ),
              child: Row(children: [
                Padding(
                  padding: EdgeInsets.all(20),
                  child: SizedBox(
                    width: 220,

                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Todays Deal",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            foreground: Paint()
                              ..style = PaintingStyle.stroke
                              ..strokeWidth = 1.5
                              ..color = Color(0xff5C6F81),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "50% OFF",
                          style: TextStyle(
                              fontSize: 35,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          '''Et provident eos est dolore. Eum libero
eligendi molestias aut et quibusdam 
aspernatur.''',
                          style:
                          TextStyle(fontSize: 12, color: Color(0xff5C6F81)),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Container(
                          width: 150,
                          height: 35,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/button_background.png"),
                                fit: BoxFit.fill),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 5),
                            child: Row(
                              children: [
                                Text(
                                  "BUY IT NOW",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(width: 20),
                                Icon(Icons.arrow_forward,
                                    color: Colors.white, size: 25),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Image.asset("assets/person.png"),
              ]),
            ),
            SizedBox(
              height: 18,
            ),
            TitleWidget(title: "Top Rated Freelances"),
            SizedBox(
              height: 12,
            ),
            Container(
              decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  Color(0xffe9f1fa),
                  Colors.white,
                ],
              ),
    ),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TopRatedFreelancesContainerWidget(img: "assets/freelancer1.png",name: "Wade Warren", jobTitle: "Beautician", rate: 1.5),
                      TopRatedFreelancesContainerWidget(img: "assets/freelancer2.png",name: "Wade Warren", jobTitle: "Beautician", rate: 4.1),
                      TopRatedFreelancesContainerWidget(img: "assets/freelancer3.png",name: "Wade Warren", jobTitle: "Beautician", rate: 2.8),
                      TopRatedFreelancesContainerWidget(img: "assets/freelancer4.png",name: "Wade Warren", jobTitle: "Beautician", rate: 5.3),
                      TopRatedFreelancesContainerWidget(img: "assets/freelancer1.png",name: "Wade Warren", jobTitle: "Beautician", rate: 1.5),
                      TopRatedFreelancesContainerWidget(img: "assets/freelancer2.png",name: "Wade Warren", jobTitle: "Beautician", rate: 4.1),
                      TopRatedFreelancesContainerWidget(img: "assets/freelancer3.png",name: "Wade Warren", jobTitle: "Beautician", rate: 2.8),
                      TopRatedFreelancesContainerWidget(img: "assets/freelancer4.png",name: "Wade Warren", jobTitle: "Beautician", rate: 5.3),

                    ]),
              ),),
            SizedBox(
              height: 30,
            ),
            TitleWidget(title: "Top Services"),
            TopServicesStack(serviceImg: "assets/service1.png",userImg: "assets/profile.png"),
            TopServicesStack(serviceImg: "assets/service2.png",userImg: "assets/profile.png"),
            TopServicesStack(serviceImg: "assets/service3.png", userImg: "assets/profile.png"),
          ],
        ),
      ),
    );
  }
}

void showSnackBar(BuildContext context) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Hello')));
}