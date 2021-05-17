import 'package:flutter/material.dart';
import 'package:room_rent/constants.dart';

class HeaderComponent extends StatelessWidget {
  const HeaderComponent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  "Location",
                  style: Theme.of(context).textTheme.headline6!.copyWith(
                        color: fontColor.withOpacity(0.7),
                      ),
                ),
                SizedBox(
                  width: defaultPadding / 2,
                ),
                Icon(
                  Icons.expand_more,
                  color: iconColor,
                ),
              ],
            ),
            SizedBox(
              height: defaultPadding / 2,
            ),
            Row(
              children: [
                Icon(
                  Icons.place_rounded,
                  color: iconColor,
                ),
                SizedBox(
                  width: defaultPadding / 2,
                ),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: "Bali,",
                        style: Theme.of(context).textTheme.headline6!.copyWith(
                            fontWeight: FontWeight.bold, color: fontColor),
                      ),
                      TextSpan(
                        text: " Indonesia",
                        style: Theme.of(context).textTheme.headline6!.copyWith(
                              color: fontColor.withOpacity(0.7),
                            ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
        InkWell(
          borderRadius: BorderRadius.circular(10),
          radius: 45.0,
          onTap: () {},
          child: Container(
            height: 40.0,
            width: 40.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(
              Icons.notifications_rounded,
              color: iconColor,
              size: 30.0,
            ),
          ),
        ),
      ],
    );
  }
}
