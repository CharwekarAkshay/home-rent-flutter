import 'package:flutter/material.dart';
import 'package:room_rent/constants.dart';

class SearchComponent extends StatelessWidget {
  const SearchComponent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.search,
            color: iconColorSecondary,
          ),
          suffixIcon: Container(
            margin: const EdgeInsets.symmetric(
              vertical: defaultPadding / 2,
              horizontal: defaultPadding / 2,
            ),
            padding: const EdgeInsets.all(defaultPadding / 2),
            decoration: BoxDecoration(
              color: fontColor,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Icon(
              Icons.menu,
              color: iconColorSecondary,
              size: 25,
            ),
          ),
          hintText: "Search Houses",
          hintStyle: TextStyle(
            color: iconColorSecondary,
          ),
          filled: true,
          fillColor: Color(0xFFFFFFFF),
          contentPadding: const EdgeInsets.symmetric(
            vertical: defaultPadding,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
