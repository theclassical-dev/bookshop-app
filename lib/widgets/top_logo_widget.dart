import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_layout.dart';
import '../utils/app_styles.dart';

class TopLogoWidget extends StatelessWidget {
  final bool? isColor;
  final MainAxisAlignment alignment;
  const TopLogoWidget({Key? key, this.isColor, required this.alignment}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: alignment,
      children: [
        const CircleAvatar(
          child: Icon(FluentSystemIcons.ic_fluent_access_time_filled, color: Colors.white, size: 40,),
        ),
        Gap(AppLayout.getHeight(10)),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("BookShop", style: Styles.headLineStyle2.copyWith(color: isColor==null ? Colors.white : Colors.black54)),
            Text("Best The Best In You...", style: Styles.textStyle.copyWith(
                fontWeight: FontWeight.w500, fontSize: 10, color: isColor==null ? Colors.white: Colors.black54,
            )),

          ],
        ),
      ],
    );
  }
}
