import 'package:flutter/material.dart';

import '../../../constants.dart';

class MapsFinderButtonComponent extends StatelessWidget {
  const MapsFinderButtonComponent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.map_sharp,
          color: iconColor,
        ),
        SizedBox(
          width: defaultPadding / 2,
        ),
        Text(
          "Maps",
          style: TextStyle(
            color: scaffoldColor,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        )
      ],
    );
  }
}
