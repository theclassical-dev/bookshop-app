import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_layout.dart';
import '../utils/app_styles.dart';

class CategoryList extends StatelessWidget {
  final Map<String, dynamic> category;
  const CategoryList({Key? key, required this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return  Column(
      children: [
        Container(
          width: size.width*0.4,
          height: AppLayout.getHeight(250),
          padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(10), vertical: AppLayout.getHeight(10)),
          margin: const EdgeInsets.only(right: 17, top: 5),
          decoration: BoxDecoration(
            color: Colors.blueGrey,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
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
              const Gap(10),
              Text(category['name'], style: Styles.textStyle.copyWith(color: Colors.white)),
              const Gap(10),
              Text(category['amount'], style: Styles.textStyle.copyWith(color: Colors.white)),
            ],
          ),
        ),
      ],
    );
  }
}
