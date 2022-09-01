import 'package:bookshop/screens/bottom_bar.dart';
import 'package:bookshop/widgets/round_book_icon.dart';
import 'package:bookshop/widgets/top_logo_widget.dart';
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
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Gap(300),
            const TopLogoWidget(alignment: MainAxisAlignment.center,),
            Gap(AppLayout.getHeight(20)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const BookIcon(icon: FluentSystemIcons.ic_fluent_book_formula_text_regular,),
                Gap(AppLayout.getHeight(10)),
                const BookIcon(icon: FluentSystemIcons.ic_fluent_book_formula_text_regular,),
                Gap(AppLayout.getHeight(10)),
                const BookIcon(icon: FluentSystemIcons.ic_fluent_book_formula_text_regular,),
              ],
            ),
            Gap(AppLayout.getHeight(20)),
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
      ),
    );
  }
}
