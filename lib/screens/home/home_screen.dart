import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:travel_now/screens/hotel_view.dart';
import 'package:travel_now/screens/ticket_view.dart';
import 'package:travel_now/utils/app_styles.dart';
import 'package:travel_now/utils/hotel_info_list.dart';
import 'package:travel_now/utils/ticket_info_list.dart';

import '../../utils/app_layout.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                SizedBox(height: AppLayout.getHeight(40)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:  [
                        Text("Hello, Droid Chief", style: Styles.headLineStyle3,),
                        SizedBox(height: AppLayout.getHeight(5)),
                        Text("Book Tickets", style: Styles.headLineStyle1,),
                      ],
                    ),
                    Container(
                      height: AppLayout.getHeight(50),
                      width: AppLayout.getWidth(50),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(AppLayout.getHeight(10)),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/app_logo.png")
                      )
                      ),
                    ),
                  ],
                ),
                SizedBox(height: AppLayout.getHeight(25)),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(AppLayout.getHeight(10)),
                    color: Colors.white
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  child: Row(
                    children: [
                      const Icon(FluentSystemIcons.ic_fluent_search_regular,),
                      Text("Search", style: Styles.headLineStyle4,)
                    ],
                  )
                  ,
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

              ],
            ),
          ),
          const SizedBox(height: 15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: ticketList.map((singleTicket) => TicketView(ticket: singleTicket)).toList()
            ),
          ),
          SizedBox(height: AppLayout.getHeight(40)),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Hotels", style: Styles.headLineStyle2),
                InkWell(
                  onTap: () {
                    print("View all hotels");
                  },
                    child: Text("View all", style: Styles.headLineStyle4.copyWith(color: Styles.primaryColor))
                )
              ],
            )
            ,
          ),
          SizedBox(height: AppLayout.getHeight(15)),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: hotelList.map((singleHotel) => HotelView(hotel: singleHotel)).toList()
            ),
          )
        ],
      ),
    );
  }
}
