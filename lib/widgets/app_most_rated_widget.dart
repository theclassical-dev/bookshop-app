import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_layout.dart';
import '../utils/app_styles.dart';

class MostRatedBook extends StatelessWidget {
  final String title;
  final String author;
  final String price;
  final String category;

  const MostRatedBook({Key? key, required this.title, required this.author, required this.price, required this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Stack(
      children: [
        Container(
          width: size.width*0.44,
          height: AppLayout.getHeight(300),
          decoration: BoxDecoration(
              color: Colors.blueGrey,
              borderRadius: BorderRadius.circular(AppLayout.getHeight(18))
          ),
          padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(15), horizontal: AppLayout.getHeight(15)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: AppLayout.getHeight(150),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Styles.primaryColor,
                  // image: DecorationImage(
                  //     fit: BoxFit.cover,
                  //     image: AssetImage(
                  //         "assets/images/"
                  //     )
                  // )
                ),
              ),
              Gap(AppLayout.getHeight(5)),
              Text(title, style: Styles.headLineStyle2.copyWith(fontWeight: FontWeight.bold,color: Colors.white ),),
              Gap(AppLayout.getHeight(5)),
              Text(author, style: Styles.headLineStyle2.copyWith(fontWeight: FontWeight.w500,color: Colors.white, fontSize: 16 ),),
              Gap(AppLayout.getHeight(5)),
              Text(category, style: Styles.headLineStyle4.copyWith(fontWeight: FontWeight.w500,color: Colors.white, fontSize: 14 ),),
              Gap(AppLayout.getHeight(5)),
              Text(price, style: Styles.headLineStyle2.copyWith(fontWeight: FontWeight.w500,color: Colors.amber, fontSize: 18 ),),


            ],
          ),
        ),
        Positioned(
            right: -45,
            top: -40,
            child:  Container(
              padding: EdgeInsets.all(AppLayout.getHeight(30) ),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(width: 10, color: Colors.white),
                  color: Colors.transparent
              ),
            )
        ),
        Positioned(
            left: -45,
            bottom: -40,
            child:  Container(
              padding: EdgeInsets.all(AppLayout.getHeight(30) ),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(width: 10, color: Colors.white),
                  color: Colors.transparent
              ),
            )
        ),

      ],
    );
  }
}
