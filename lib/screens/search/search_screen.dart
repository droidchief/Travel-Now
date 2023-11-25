import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:travel_now/utils/app_layout.dart';
import 'package:travel_now/utils/app_styles.dart';

import '../../widgets/icon_text_widget.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(20), vertical: AppLayout.getHeight(20)),
        children: [
          SizedBox(height: AppLayout.getHeight(40)),
          Text("What are \nyou looking for?", style: Styles.headLineStyle1.copyWith(fontSize: AppLayout.getWidth(35))),
          SizedBox(height: AppLayout.getHeight(20)),
          FittedBox(
            child: Container(
              padding: const EdgeInsets.all(3.5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppLayout.getHeight(50)),
                color: Styles.inActiveTabColor,
              ),
              child: Row(
                children: [
                  /*
                 Airline Tickets
                 */
                  Container(
                      width: size.width*0.44,
                      padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.horizontal(left: Radius.circular(AppLayout.getHeight(50))),
                        color: Colors.white,
                      ),
                      child: const Center(child: Text("Airline tickets"),)
                  ),

                  /*
                 Hotel views
                 */
                  Container(
                      width: size.width*0.44,
                      padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.horizontal(right: Radius.circular(AppLayout.getHeight(50))),
                        color: Styles.inActiveTabColor,
                      ),
                      child: const Center(child: Text("Hotels"),)
                  )
                ],
              ),
            )
            ,
          ),
          SizedBox(height: AppLayout.getHeight(25)),
          const AppIconText(
            icon: Icons.flight_takeoff_rounded,
            text: "Depature",
          ),
          SizedBox(height: AppLayout.getHeight(15)),
          const AppIconText(
            icon: Icons.flight_land_rounded,
            text: "Arrival",
          ),
          SizedBox(height: AppLayout.getHeight(25)),
          Container(
            decoration: BoxDecoration(
                color: Styles.primaryColor,
                borderRadius: BorderRadius.circular(10)
            ),
            padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(20)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Find tickets", style: Styles.textStyle.copyWith(color: Colors.white))
              ],
            ),
          ),
          SizedBox(height: AppLayout.getHeight(40)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Upcoming Travel ", style: Styles.headLineStyle2,),
              InkWell(
                  onTap: () {
                    print("View all upcoming travel");
                  },
                  child: Text("View all", style: Styles.headLineStyle4.copyWith(color: Styles.primaryColor))
              ),
            ],
          ),
          SizedBox(height: AppLayout.getHeight(15)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: size.width*0.42,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(12)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade200,
                      blurRadius: 20,
                      spreadRadius: 10
                    )
                  ]
                ),
                child: Column(
                  children: [
                    Container(
                      height: AppLayout.getHeight(180),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(AppLayout.getHeight(15)), topRight: Radius.circular(AppLayout.getHeight(15))),
                          image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/images/hotel5.jpeg"),
                          )
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(10), vertical: AppLayout.getHeight(12)),
                      child: Text("20 % discount on business class tickets on Air Peace", style: Styles.textStyle),
                    )

                  ],
                ),
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: size.width*0.44,
                        // height: AppLayout.getHeight(174),
                        decoration: BoxDecoration(
                            color: Styles.tealGreen,
                            borderRadius: BorderRadius.circular(AppLayout.getHeight(18))
                        ),
                        padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(15), vertical: AppLayout.getHeight(20)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Discount \nfor survey", style: Styles.headLineStyle2.copyWith(fontWeight: FontWeight.bold, color: Colors.white )),
                            SizedBox(height: AppLayout.getHeight(10)),
                            Text("Take the survey about our services and get discount", style: Styles.textStyle.copyWith(fontWeight: FontWeight.w500, color: Colors.white )),
                          ],
                        ),
                      ),
                      Positioned(
                        right: -45,
                        top: -40,
                        child: Container(
                          padding: EdgeInsets.all(AppLayout.getHeight(30)),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(width: AppLayout.getWidth(18), color: Styles.tealGreenDark),
                              color: Colors.transparent
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: AppLayout.getHeight(20)),
                  Container(
                    width: size.width*0.44,
                    // height: AppLayout.getHeight(174),
                    decoration: BoxDecoration(
                        color: Styles.orange,
                        borderRadius: BorderRadius.circular(AppLayout.getHeight(18))
                    ),
                    padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(15), vertical: AppLayout.getHeight(20)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Go beyond \ndreams", style: Styles.headLineStyle2.copyWith(fontWeight: FontWeight.bold, color: Colors.white )),
                        SizedBox(height: AppLayout.getHeight(10)),
                        Text("Visit your imaginations. Explore to the fullest", style: Styles.textStyle.copyWith(fontWeight: FontWeight.w500, color: Colors.white )),
                      ],
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
