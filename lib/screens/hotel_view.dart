import 'package:flutter/material.dart';
import 'package:travel_now/utils/app_layout.dart';
import 'package:travel_now/utils/app_styles.dart';

class HotelView extends StatelessWidget {
  final Map<String, dynamic> hotel;
  const HotelView({super.key, required this.hotel});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      width: size.width*0.85,
      height: AppLayout.getHeight(350),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(AppLayout.getHeight(15)),
        boxShadow: [
            BoxShadow(
                color: Colors.grey.shade200,
                blurRadius: 20,
                spreadRadius: 10
            )
          ],
      ),
      margin: EdgeInsets.only(left: AppLayout.getHeight(16)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: AppLayout.getHeight(200),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(AppLayout.getHeight(15)), topRight: Radius.circular(AppLayout.getHeight(15))),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                        "assets/images/${hotel['image']}"
                    )
                )
            ),
          ),
          SizedBox(height: AppLayout.getHeight(15)),
          Container(
            padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(16)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(hotel['place'], style: Styles.headLineStyle2),
                SizedBox(height: AppLayout.getHeight(8)),
                Text(hotel['destination'], style: Styles.headLineStyle4),
                SizedBox(height: AppLayout.getHeight(8)),
                Text("\$${hotel['price']}/night", style: Styles.headLineStyle2),
                SizedBox(height: AppLayout.getHeight(20)),
                Text("A very calm and relaxing vacation house with", style: Styles.headLineStyle4),
              ],
            ),
          )
        ],
      ),

    );
  }
}
