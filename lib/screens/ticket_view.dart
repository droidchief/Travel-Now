import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:travel_now/utils/app_layout.dart';
import 'package:travel_now/utils/app_styles.dart';
import 'package:travel_now/widgets/ring.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width*0.85,
      height: 200,
      child: Container(
        margin:  const EdgeInsets.only(left: 16),
        child: Column(
          children: [
            //Showing the teal part of the ticket view
            Container(
              decoration: BoxDecoration(
                color: Styles.primaryColor,
                borderRadius: const BorderRadius.only(topLeft: Radius.circular(21), topRight: Radius.circular(21))
              ),
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text("NYC", style: Styles.headLineStyle3.copyWith(color: Colors.white),),
                      const Spacer(),
                      const Ring(),
                      Expanded(
                          child: Stack(
                            children:  [
                              SizedBox(
                                height: 24,
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
                      Text("LDN", style: Styles.headLineStyle3.copyWith(color: Colors.white),)
                    ],
                  ),
                  const SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 100,
                        child: Text("New York", style: Styles.headLineStyle4.copyWith(color: Colors.white)),
                      ),
                      Text("8H:30M", style: Styles.headLineStyle4.copyWith(color: Colors.white), textAlign: TextAlign.center,),
                      SizedBox(
                        width: 100,
                        child: Text("London", style: Styles.headLineStyle4.copyWith(color: Colors.white), textAlign: TextAlign.end,),
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
                  const SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      )
                    ),),
                  ),
                  Expanded(child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints) {
                      return Flex(
                        direction: Axis.horizontal,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.max,
                        children: List.generate((constraints.constrainWidth()/15).floor(), (index) => const SizedBox(
                          width: 5,
                          height: 1,
                          child: DecoratedBox(decoration: BoxDecoration(
                              color: Colors.white
                          ),),
                        )),
                      );
                    },

                    ),
                  )),
                  const SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
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
                  borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(21), bottomRight: Radius.circular(21))
              ),
              padding: const EdgeInsets.only(left: 16, top: 10, right: 16, bottom: 16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("1 May", style: Styles.headLineStyle3.copyWith(color: Colors.white)),
                          const SizedBox(height: 5),
                          Text("Date", style: Styles.headLineStyle4.copyWith(color: Colors.white))
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("08:00 AM", style: Styles.headLineStyle3.copyWith(color: Colors.white)),
                          const SizedBox(height: 5),
                          Text("Departure time", style: Styles.headLineStyle4.copyWith(color: Colors.white))
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text("23", style: Styles.headLineStyle3.copyWith(color: Colors.white)),
                          const SizedBox(height: 5),
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
