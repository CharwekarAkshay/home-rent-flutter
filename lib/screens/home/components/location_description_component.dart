import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'favourite_button_component.dart';

class LocationDescriptionComponent extends StatelessWidget {
  const LocationDescriptionComponent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: Text(
            "Lonely House In Green Medows",
            softWrap: true,
            style: TextStyle(
              color: scaffoldColor,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(width: defaultPadding),
        FavouriteButtonComponent(),
      ],
    );
  }
}

