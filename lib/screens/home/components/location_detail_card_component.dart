import 'package:flutter/material.dart';
import 'package:room_rent/constants.dart';

import 'favourite_button_component.dart';
import 'location_description_component.dart';
import 'maps_finder_button_component.dart';

class LocationDetailCardComponent extends StatefulWidget {
  const LocationDetailCardComponent({
    Key? key,
  }) : super(key: key);

  @override
  _LocationDetailCardComponentState createState() =>
      _LocationDetailCardComponentState();
}

class _LocationDetailCardComponentState
    extends State<LocationDetailCardComponent> {
  PageController? _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(viewportFraction: 1);
  }

  @override
  void dispose() {
    _pageController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Expanded(
      child: PageView.builder(
        controller: _pageController,
        itemCount: 4,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.symmetric(horizontal: defaultPadding),
            padding: const EdgeInsets.symmetric(
              vertical: defaultPadding,
              horizontal: defaultPadding,
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/dummy_home.jpg"),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.srgbToLinearGamma(),
              ),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(defaultPadding / 2),
                      decoration: BoxDecoration(
                        color: fontColor.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: MapsFinderButtonComponent(),
                    )
                  ],
                ),
                LocationDescriptionComponent(),
              ],
            ),
          );
        },
      ),
    );
  }
}

