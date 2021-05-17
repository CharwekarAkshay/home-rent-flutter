import 'package:flutter/material.dart';
import 'package:room_rent/constants.dart';

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
    _pageController = PageController(viewportFraction: 0.8);
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
            width: size.width * 0.8,
            margin: const EdgeInsets.symmetric(horizontal: defaultPadding),
            decoration: BoxDecoration(
              color: Colors.lightGreen,
              borderRadius: BorderRadius.circular(15),
            ),
          );
        },
      ),
    );
  }
}
