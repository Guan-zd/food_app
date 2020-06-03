import 'package:flutter/material.dart';
import 'package:food_app/constants.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 35),
      height: 75,
      width: double.infinity,
      // double.infinity means it cove the available width
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -7),
            blurRadius: 33,
            color: Color(0xFF6DAED9).withOpacity(0.21),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.home,color: kPrimaryColor,),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.favorite_border, color: ksecondaryColor,),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.explore, color: ksecondaryColor,),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.perm_identity, color: ksecondaryColor,),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}