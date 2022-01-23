
import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class CustomAppBar extends StatelessWidget {
  final IconData leftIcon;
  final IconData rightIcon;
  final Function? leftCallBack; //? question mark is used to explicitly putting callback equal to null
  // ignore: use_key_in_widget_constructors
  CustomAppBar(this.leftIcon, this.rightIcon,{this.leftCallBack});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).padding.top,
        left: 25,
        right: 25,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
              onTap: leftCallBack != null ? () => leftCallBack!() : null,
              child: buildIcon(leftIcon),
          ),
          buildIcon(rightIcon),
        ],
      ),
    );
  }

  Widget buildIcon(IconData icon) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
      ),
      child: Icon(icon),
    );
  }
}
