import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_layout.dart';
import '../utils/app_styles.dart';

class AllBooks extends StatelessWidget {
  final Map<String, dynamic> book;
  const AllBooks({Key? key, required this.book}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      width: size.width*0.7,
      height: AppLayout.getHeight(100),
      padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(15), vertical: AppLayout.getWeight(17)),
      margin: const EdgeInsets.only(right: 17, top: 5),
      decoration: BoxDecoration(
          color: Colors.blueGrey,
          borderRadius: BorderRadius.circular(24),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.shade200,
                blurRadius: 20,
                spreadRadius: 5
            )
          ]
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: size.width*0.2,
                height: AppLayout.getHeight(65),
                decoration: BoxDecoration(
                    color: Colors.black54,
                    borderRadius: BorderRadius.circular(30)
                ),
              ),
              Gap(AppLayout.getHeight(8)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(book['title'], style: Styles.headLineStyle3.copyWith(
                      color: Colors.white
                  ),),
                  Text(book['author'], style: Styles.headLineStyle4.copyWith(
                      color: Colors.white
                  ),),
                  Text("\$${book['price']}", style: Styles.headLineStyle4.copyWith(
                      color: Colors.amberAccent
                  ),)
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
