import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../utils/app_layout.dart';
import '../utils/app_styles.dart';

class AppIconText extends StatelessWidget {
  final IconData icon;
  final String text;
  const AppIconText({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10)
      ),
      padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(12), vertical: AppLayout.getHeight(12)),
      child: Row(
        children: [
          Icon(icon, color: Colors.grey,),
          SizedBox(width: AppLayout.getWidth(10)),
          Text(text, style: Styles.textStyle,)
        ],
      ),
    );
  }
}
