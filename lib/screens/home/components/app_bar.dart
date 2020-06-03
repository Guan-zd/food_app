import 'package:flutter/material.dart';
import '../../../constants.dart';

AppBar homeAppbar(BuildContext context) {
    return AppBar(
      centerTitle: true,//统一设置标题居中
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        icon: Icon(
          Icons.subject,
          color: ksecondaryColor,
        ),
        onPressed: () {},
      ),
      title: RichText(
        text: TextSpan(
          style: Theme.of(context)
              .textTheme
              .subtitle1
              .copyWith(fontWeight: FontWeight.bold),
          children: [
            TextSpan(
              text: "美团",
              style: TextStyle(color: ksecondaryColor),
            ),
            TextSpan(text: "外卖", style: TextStyle(color: kPrimaryColor))
          ],
        ),
      ),
      actions: <Widget>[
        IconButton(
          icon: Icon(
            Icons.notifications_none,
            color: ksecondaryColor,
          ),
          onPressed: () {},
        )
      ],
    );
  }
