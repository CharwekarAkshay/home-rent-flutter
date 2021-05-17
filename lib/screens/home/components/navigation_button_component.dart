import 'package:flutter/material.dart';
import 'package:room_rent/constants.dart';

class NavigationButtonComponent extends StatelessWidget {
  const NavigationButtonComponent({
    Key? key,
    required this.icon,
    required this.selectedIcon,
    required this.onTap,
    this.isActive = false,
  }) : super(key: key);

  final IconData icon;
  final IconData selectedIcon;
  final GestureTapCallback onTap;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(defaultPadding / 2),
        decoration: BoxDecoration(
          color: isActive ? secondaryBackgroundColor : Colors.transparent,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Icon(
          isActive ? selectedIcon : icon,
          color: isActive ? scaffoldColor : iconColorSecondary,
        ),
      ),
    );
  }
}
