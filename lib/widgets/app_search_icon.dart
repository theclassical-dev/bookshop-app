import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_layout.dart';

class SearchIcon extends StatelessWidget {
  const SearchIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
