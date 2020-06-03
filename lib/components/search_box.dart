import 'package:flutter/material.dart';
import '../constants.dart';

class SearchBox extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const SearchBox({
    Key key, this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        border: Border.all(color: ksecondaryColor.withOpacity(0.32)),
      ),
      child: TextField(
        onChanged: onChanged,
        decoration: InputDecoration(
          border: InputBorder.none,
          icon: Icon(
            Icons.search,
            color: ksecondaryColor,
          ),
          hintText: "输入名称搜索",
          hintStyle: TextStyle(color: ksecondaryColor)
        ),
      ),
    );
  }
}