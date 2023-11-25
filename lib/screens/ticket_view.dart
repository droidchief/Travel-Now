import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:travel_now/utils/app_layout.dart';
import 'package:travel_now/utils/app_styles.dart';
import 'package:travel_now/widgets/ring.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  const TicketView({super.key, required this.ticket});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width*0.85,
      height: AppLayout.getHeight(200),
      child: Container(
        margin:  EdgeInsets.only(left: AppLayout.getHeight(16)),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            //Showing the teal part of the ticket view
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
                      Text(ticket['from']['code'], style: Styles.headLineStyle3.copyWith(color: Colors.white),),
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
                              const Center(child: Icon(FluentSystemIcons.ic_fluent_airplane_filled, color: Colors.white,),),
                            ]
                          )
                      ),
                      const Ring(),
                      const Spacer(),
                      Text(ticket['to']['code'], style: Styles.headLineStyle3.copyWith(color: Colors.white),)
                    ],
                  ),
                  SizedBox(height: AppLayout.getHeight(5)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: AppLayout.getWidth(100),
                        child: Text(ticket['from']['name'], style: Styles.headLineStyle4.copyWith(color: Colors.white)),
                      ),
                      Text(ticket['flying_time'], style: Styles.headLineStyle4.copyWith(color: Colors.white), textAlign: TextAlign.center,),
                      SizedBox(
                        width: AppLayout.getWidth(100),
                        child: Text(ticket['to']['name'], style: Styles.headLineStyle4.copyWith(color: Colors.white), textAlign: TextAlign.end,),
                      ),
                    ],
                  )
                ],
              ),
            ),

            //Showing the orange part of the ticket view
            Container(
              color: Styles.secondaryColor,
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

            //Showing bottom part the orange part of the ticket view
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
                          Text(ticket['date'], style: Styles.headLineStyle3.copyWith(color: Colors.white)),
                          SizedBox(height: AppLayout.getHeight(5)),
                          Text("Date", style: Styles.headLineStyle4.copyWith(color: Colors.white))
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(ticket['departure_time'], style: Styles.headLineStyle3.copyWith(color: Colors.white)),
                          SizedBox(height: AppLayout.getHeight(5)),
                          Text("Departure time", style: Styles.headLineStyle4.copyWith(color: Colors.white))
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(ticket['number'].toString(), style: Styles.headLineStyle3.copyWith(color: Colors.white)),
                          SizedBox(height: AppLayout.getHeight(5)),
                          Text("Number", style: Styles.headLineStyle4.copyWith(color: Colors.white))
                        ],
                      )
                    ],
                  ),
                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}
