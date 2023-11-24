import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:travel_now/screens/ticket_view.dart';
import 'package:travel_now/utils/app_styles.dart';

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
                const SizedBox(height: 40,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:  [
                        Text("Hello, Droid Chief", style: Styles.headLineStyle3,),
                        const SizedBox(height: 5,),
                        Text("Book Tickets", style: Styles.headLineStyle1,),
                      ],
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/app_logo.png")
                      )
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 25,),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
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
                const SizedBox(height: 40,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Upcoming Travel ", style: Styles.headLineStyle2,),
                    InkWell(
                      onTap: (){
                        print("View all was tapped");
                      },
                      child: Text("View all", style: Styles.headLineStyle4.copyWith(color: Styles.primaryColor),)
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
              children: const [
                TicketView(),
                TicketView(),
                TicketView()
              ],
            ),
          )
        ],
      ),
    );
  }
}
