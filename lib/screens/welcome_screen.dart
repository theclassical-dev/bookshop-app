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
      backgroundColor: Styles.bgColor,
      body: ListView(
            padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(100), vertical: AppLayout.getHeight(400)),
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
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
                  )
                ],
              ),
            ],
          ),
    );
  }
}
