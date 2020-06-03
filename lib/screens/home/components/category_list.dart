import 'package:flutter/material.dart';

import 'category_item.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: BouncingScrollPhysics(),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          CategoryItem(
            title: "热卖商品",
            isActive: true,
            press: () {},
          ),
          CategoryItem(
            title: "超值套餐",
            press: () {},
          ),
          CategoryItem(
            title: "小食",
            press: () {},
          ),
          CategoryItem(
            title: "甜品",
            press: () {},
          ),
          CategoryItem(
            title: "饮品",
            press: () {},
          ),
          CategoryItem(
            title: "开心乐园",
            press: () {},
          ),
        ],
      ),
    );
  }
}