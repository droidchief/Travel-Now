import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:travel_now/utils/app_layout.dart';
import 'package:travel_now/utils/app_styles.dart';
import '../../widgets/ring.dart';
import '../../widgets/ring_grey.dart';
class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(20), vertical: AppLayout.getHeight(20)),
            children: [
              SizedBox(height: AppLayout.getHeight(40)),
              Text("Tickets", style: Styles.headLineStyle1.copyWith(fontSize: AppLayout.getWidth(35))),
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
                          child: const Center(child: Text("Upcoming"),)
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
                          child: const Center(child: Text("Previous"),)
                      )
                    ],
                  ),
                )
                ,
              ),
              SizedBox(height: AppLayout.getHeight(25)),
              Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(AppLayout.getHeight(15)),
                    color: Colors.white,
                  ),
                  child: SizedBox(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          padding: EdgeInsets.all(AppLayout.getHeight(16)),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text("NYC", style: Styles.headLineStyle3.copyWith(color: Styles.textColor)),
                                  const Spacer(),
                                  const RingGrey(),
                                  Expanded(
                                      child: Stack(
                                          children:  [
                                            SizedBox(
                                              height: AppLayout.getHeight(24),
                                              child: LayoutBuilder(
                                                builder: (BuildContext context, BoxConstraints constraints) {
                                                  return Flex(
                                                    direction: Axis.horizontal,
                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                    mainAxisSize: MainAxisSize.max,
                                                    children: List.generate((constraints.constrainWidth() / 5).floor(), (index) => const SizedBox(
                                                      width: 3, height: 1, child: DecoratedBox(decoration: BoxDecoration(
                                                        color: Colors.grey
                                                    ),),
                                                    )),
                                                  );
                                                },

                                              ),
                                            ),
                                            const Center(child: Icon(FluentSystemIcons.ic_fluent_airplane_filled, color: Colors.grey)),
                                          ]
                                      )
                                  ),
                                  const RingGrey(),
                                  const Spacer(),
                                  Text("LDN", style: Styles.headLineStyle3.copyWith(color: Styles.textColor))
                                ],
                              ),
                              SizedBox(height: AppLayout.getHeight(5)),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    width: AppLayout.getWidth(100),
                                    child: Text("New York", style: Styles.headLineStyle4),
                                  ),
                                  Text("8H 30M", style: Styles.headLineStyle4, textAlign: TextAlign.center,),
                                  SizedBox(
                                    width: AppLayout.getWidth(100),
                                    child: Text("London", style: Styles.headLineStyle4, textAlign: TextAlign.end,),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),

                        Container(
                          padding: EdgeInsets.only(left: AppLayout.getHeight(16), top: AppLayout.getHeight(10), right: AppLayout.getHeight(16), bottom: AppLayout.getHeight(16)),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("5 MAY", style: Styles.headLineStyle3.copyWith(color: Styles.textColor)),
                                      SizedBox(height: AppLayout.getHeight(5)),
                                      Text("Date", style: Styles.headLineStyle4)
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Text("08:00 AM", style: Styles.headLineStyle3.copyWith(color: Styles.textColor)),
                                      SizedBox(height: AppLayout.getHeight(5)),
                                      Text("Departure time", style: Styles.headLineStyle4)
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text("23", style: Styles.headLineStyle3.copyWith(color: Styles.textColor)),
                                      SizedBox(height: AppLayout.getHeight(5)),
                                      Text("Number", style: Styles.headLineStyle4)
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),

                        Container(
                          padding: EdgeInsets.only(left: AppLayout.getHeight(16), top: AppLayout.getHeight(10), right: AppLayout.getHeight(16), bottom: AppLayout.getHeight(16)),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Flutter Dash", style: Styles.headLineStyle3.copyWith(color: Styles.textColor)),
                                      SizedBox(height: AppLayout.getHeight(5)),
                                      Text("Passenger", style: Styles.headLineStyle4)
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text("73782782", style: Styles.headLineStyle3.copyWith(color: Styles.textColor)),
                                      SizedBox(height: AppLayout.getHeight(5)),
                                      Text("Passport", style: Styles.headLineStyle4)
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),

                        Container(
                          padding: EdgeInsets.only(left: AppLayout.getHeight(16), top: AppLayout.getHeight(10), right: AppLayout.getHeight(16), bottom: AppLayout.getHeight(16)),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("0055 444 77147", style: Styles.headLineStyle3.copyWith(color: Styles.textColor)),
                                      SizedBox(height: AppLayout.getHeight(5)),
                                      Text("Number of E-ticket", style: Styles.headLineStyle4)
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text("B2SGR44", style: Styles.headLineStyle3.copyWith(color: Styles.textColor)),
                                      SizedBox(height: AppLayout.getHeight(5)),
                                      Text("Booking code", style: Styles.headLineStyle4)
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),

                        Container(
                          padding: EdgeInsets.only(left: AppLayout.getHeight(16), top: AppLayout.getHeight(10), right: AppLayout.getHeight(16), bottom: AppLayout.getHeight(16)),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("VISA *** 2462", style: Styles.headLineStyle3.copyWith(color: Styles.textColor)),
                                      SizedBox(height: AppLayout.getHeight(5)),
                                      Text("Payment method", style: Styles.headLineStyle4)
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text("\$244.99", style: Styles.headLineStyle3.copyWith(color: Styles.textColor)),
                                      SizedBox(height: AppLayout.getHeight(5)),
                                      Text("Price", style: Styles.headLineStyle4)
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),

                        Container(
                          margin: EdgeInsets.symmetric(vertical: AppLayout.getHeight(20), horizontal: AppLayout.getWidth(10)),
                          height: AppLayout.getHeight(60),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(AppLayout.getHeight(10)),
                              image: const DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage("assets/images/barcode.png")
                              )
                          ),
                        )

                      ],
                    ),
                  )
              ),
              SizedBox(height: AppLayout.getHeight(25)),
              SizedBox(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Styles.primaryColor,
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(AppLayout.getHeight(21)), topRight: Radius.circular(AppLayout.getHeight(21)))
                      ),
                      padding: EdgeInsets.all(AppLayout.getHeight(16)),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text("NYC", style: Styles.headLineStyle3.copyWith(color: Colors.white)),
                              const Spacer(),
                              const Ring(),
                              Expanded(
                                  child: Stack(
                                      children:  [
                                        SizedBox(
                                          height: AppLayout.getHeight(24),
                                          child: LayoutBuilder(
                                            builder: (BuildContext context, BoxConstraints constraints) {
                                              return Flex(
                                                direction: Axis.horizontal,
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                mainAxisSize: MainAxisSize.max,
                                                children: List.generate((constraints.constrainWidth() / 5).floor(), (index) => const SizedBox(
                                                  width: 3, height: 1, child: DecoratedBox(decoration: BoxDecoration(
                                                    color: Colors.white
                                                ),),
                                                )),
                                              );
                                            },

                                          ),
                                        ),
                                        const Center(child: Icon(FluentSystemIcons.ic_fluent_airplane_filled, color: Colors.white)),
                                      ]
                                  )
                              ),
                              const Ring(),
                              const Spacer(),
                              Text("LDN", style: Styles.headLineStyle3.copyWith(color: Colors.white))
                            ],
                          ),
                          SizedBox(height: AppLayout.getHeight(5)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: AppLayout.getWidth(100),
                                child: Text("New York", style: Styles.headLineStyle4.copyWith(color: Colors.white)),
                              ),
                              Text("8H 30M", style: Styles.headLineStyle4.copyWith(color: Colors.white), textAlign: TextAlign.center,),
                              SizedBox(
                                width: AppLayout.getWidth(100),
                                child: Text("London", style: Styles.headLineStyle4.copyWith(color: Colors.white), textAlign: TextAlign.end,),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),

                    Container(
                      decoration: BoxDecoration(
                        color: Styles.secondaryColor,
                      ),
                      child: Row(
                        children: [
                          SizedBox(
                            height: AppLayout.getHeight(20),
                            width: AppLayout.getWidth(10),
                            child: DecoratedBox(decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(AppLayout.getHeight(10)),
                                  bottomRight: Radius.circular(AppLayout.getHeight(10)),
                                )
                            ),),
                          ),
                          Expanded(child: Padding(
                            padding: EdgeInsets.all(AppLayout.getHeight(12)),
                            child: LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints) {
                              return Flex(
                                direction: Axis.horizontal,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                mainAxisSize: MainAxisSize.max,
                                children: List.generate((constraints.constrainWidth()/15).floor(), (index) => SizedBox(
                                  width: AppLayout.getWidth(5),
                                  height: AppLayout.getHeight(1),
                                  child: const DecoratedBox(decoration: BoxDecoration(
                                      color: Colors.white
                                  ),),
                                )),
                              );
                            },

                            ),
                          )),
                          SizedBox(
                            height: AppLayout.getHeight(20),
                            width: AppLayout.getWidth(10),
                            child:  DecoratedBox(decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(AppLayout.getHeight(10)),
                                  bottomLeft: Radius.circular(AppLayout.getHeight(10)),
                                )
                            ),),
                          )
                        ],
                      ),
                    ),

                    Container(
                      decoration: BoxDecoration(
                          color: Styles.secondaryColor,
                          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(AppLayout.getHeight(21)), bottomRight: Radius.circular(AppLayout.getHeight(21)))
                      ),
                      padding: EdgeInsets.only(left: AppLayout.getHeight(16), top: AppLayout.getHeight(10), right: AppLayout.getHeight(16), bottom: AppLayout.getHeight(16)),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("5 MAY", style: Styles.headLineStyle3.copyWith(color: Colors.white)),
                                  SizedBox(height: AppLayout.getHeight(5)),
                                  Text("Date", style: Styles.headLineStyle4.copyWith(color: Colors.white))
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text("08:00 AM", style: Styles.headLineStyle3.copyWith(color: Colors.white)),
                                  SizedBox(height: AppLayout.getHeight(5)),
                                  Text("Departure time", style: Styles.headLineStyle4.copyWith(color: Colors.white))
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text("23", style: Styles.headLineStyle3.copyWith(color: Colors.white)),
                                  SizedBox(height: AppLayout.getHeight(5)),
                                  Text("Number", style: Styles.headLineStyle4.copyWith(color: Colors.white))
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          Positioned(
            left: AppLayout.getWidth(7),
            top: AppLayout.getHeight(300),
            child: Container(
              padding: const EdgeInsets.all(3),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color:  Styles.textColor, width: 2)
              ),
              child: CircleAvatar(
                maxRadius: 6,
                backgroundColor: Styles.textColor,
              ),
            ),
          ),
          Positioned(
            right: AppLayout.getWidth(7),
            top: AppLayout.getHeight(300),
            child: Container(
              padding: const EdgeInsets.all(3),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color:  Styles.textColor, width: 2)
              ),
              child: CircleAvatar(
                maxRadius: 6,
                backgroundColor: Styles.textColor,
              ),
            ),
          )
        ],
      )
    );
  }
}
