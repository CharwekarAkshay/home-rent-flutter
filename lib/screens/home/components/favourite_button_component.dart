import 'package:flutter/material.dart';

import '../../../constants.dart';

class FavouriteButtonComponent extends StatelessWidget {
  const FavouriteButtonComponent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 60,
      child: Stack(
        children: [
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              color: fontColor,
              shape: BoxShape.circle,
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                color: secondaryBackgroundColor,
                shape: BoxShape.circle,
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                color: Colors.transparent,
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.favorite,
                color: Colors.red,
              ),
            ),
          )
        ],
      ),
    );
  }
}
