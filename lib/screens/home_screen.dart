import 'package:bookshop/widgets/book_list.dart';
import 'package:bookshop/widgets/top_logo_widget.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_info.dart';
import '../utils/app_layout.dart';
import '../utils/app_styles.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

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
                Gap(40),
                const TopLogoWidget(isColor: false, alignment: MainAxisAlignment.start,),
                Gap(AppLayout.getHeight(30)),
                Container(
                  // height: AppLayout.getHeight(30),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white
                  ),
                  padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(12), horizontal: AppLayout.getHeight(12)),
                  child: Row(
                    children: [
                      const Icon(FluentSystemIcons.ic_fluent_search_filled, color: Colors.orangeAccent,),
                      Gap(AppLayout.getHeight(5)),
                      const Text("search for books..")
                    ],
                  )
                ),
                Gap(AppLayout.getHeight(35)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Latest Books", style: Styles.headLineStyle4,),
                    Text("view all", style: Styles.headLineStyle4,),

                  ],
                ),
                Gap(AppLayout.getHeight(30)),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.only(left: 15),
                  child: Row(
                      children: latestList.map((singleBook) => Books(book: singleBook)).toList()
                  ),
                )

              ],
            ),
          )
        ],
      )
    );
  }
}
