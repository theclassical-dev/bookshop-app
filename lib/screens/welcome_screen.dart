import 'package:bookshop/screens/bottom_bar.dart';
import 'package:bookshop/widgets/round_book_icon.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_layout.dart';
import '../utils/app_styles.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: ListView(
            padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(80), vertical: AppLayout.getHeight(400)),
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const CircleAvatar(
                    child: Icon(FluentSystemIcons.ic_fluent_access_time_filled, color: Colors.white, size: 40,),
                  ),
                  Gap(AppLayout.getHeight(12)),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("BookShop", style: Styles.headLineStyle2),
                      Text("Best The Best In You...", style: Styles.textStyle.copyWith(
                        fontWeight: FontWeight.w500, fontSize: 10
                      )),

                    ],
                  ),
                ],
              ),
              Gap(AppLayout.getHeight(30)),
              Row(
                children: [
                  const BookIcon(icon: FluentSystemIcons.ic_fluent_book_formula_text_regular,),
                  Gap(AppLayout.getHeight(10)),
                  const BookIcon(icon: FluentSystemIcons.ic_fluent_book_formula_text_regular,),
                  Gap(AppLayout.getHeight(10)),
                  const BookIcon(icon: FluentSystemIcons.ic_fluent_book_formula_text_regular,),
                ],
              ),
              Gap(AppLayout.getHeight(30)),
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.white
                ),
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const BottomBar()));
                  },
                  child: Center(child: Text("Get Started",
                    style: Styles.textStyle.copyWith(color: Colors.blue),)),
                ),
              )
            ],
          ),
    );
  }
}
