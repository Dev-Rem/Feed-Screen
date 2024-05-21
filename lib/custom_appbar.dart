// import 'dart:ffi';

import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final String leftOption;
  final String rightOption;
  final VoidCallback? leftPressed;
  final VoidCallback? rightPressed;
  final Color backgroundColor;
  final Color titleColor;
  final Color optionsColor;
  final double leadingWidth;

  const CustomAppBar({
    required this.title,
    required this.leftOption,
    required this.rightOption,
    required this.backgroundColor,
    required this.titleColor,
    required this.optionsColor,
    required this.leadingWidth,
    this.leftPressed,
    this.rightPressed,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundColor,
      leadingWidth: leadingWidth,
      surfaceTintColor: Colors.white,
      leading: TextButton(
        onPressed: leftPressed,
        child: Text(
          leftOption,
          style: TextStyle(color: optionsColor, fontSize: 15.0),
        ),
      ),
      title: Text(
        title,
        style: TextStyle(fontWeight: FontWeight.w600, color: titleColor),
      ),
      centerTitle: true,
      actions: <Widget>[
        TextButton(
          onPressed: rightPressed,
          child: Text(
            rightOption,
            style: TextStyle(
              color: optionsColor,
            ),
          ),
        )
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
