import 'package:flutter/material.dart';
import 'package:food_app/constants.dart';
import 'item_image.dart';
import 'order_button.dart';
import 'title_price_rating.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ItemImage(
          imgSrc: "assets/images/hamburger.jpeg",
        ),
        Expanded(
          child: ItemInfo(),
        ),
      ],
    );
  }
}

class ItemInfo extends StatelessWidget {
  const ItemInfo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.all(20),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30), topRight: Radius.circular(30)),
      ),
      child: Column(
        children: <Widget>[
          shopName(name: "麦当劳(正义西街餐厅)"),
          TitlePriceRating(
            name: "芝士汉堡",
            numOfReviews: 24,
            rating: 4.5,
            price: 15,
            onRatingChanged: (value) {},
          ),
          Text(
            "新鲜健康，任你出彩。让麦当劳成为你均衡饮食的一部分吧！饮食需要多样、搭配与适度，选择下方麦当劳美食，计算一餐麦当劳的营养信息，更好搭配你一天的膳食！",
            style: TextStyle(height: 1.5),
          ),
          SizedBox(
            height: size.height * 0.1,
            // Free space 10% of total height
          ),
          OrderButton(size: size, press: (){},),
        ],
      ),
    );
  }

  Row shopName({String name}) {
    return Row(
      children: <Widget>[
        Icon(
          Icons.location_on,
          color: ksecondaryColor,
        ),
        SizedBox(width: 10),
        Text(name)
      ],
    );
  }
}
