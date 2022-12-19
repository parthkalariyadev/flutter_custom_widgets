import 'dart:io';

import 'package:flutter/material.dart';

class AppAppBar extends StatelessWidget with PreferredSizeWidget {
  final String title;
  final Color backgroundColor;
  final double elevation;
  final double? toolbarHeight;
  final ShapeBorder? shape;
  final List<Widget>? actions;
  final bool centerTitle;
  final bool automaticallyImplyLeading;
  final double titleSpacing;
  final bool isLeading;
  final VoidCallback? onLeadingPressed;

  const AppAppBar({
    Key? key,
    this.title = '',
    this.backgroundColor = Colors.transparent,
    this.elevation = 0,
    this.toolbarHeight,
    this.shape,
    this.actions,
    this.centerTitle = false,
    this.automaticallyImplyLeading = true,
    this.titleSpacing = 0,
    this.isLeading = false,
    this.onLeadingPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: centerTitle,
      toolbarHeight: toolbarHeight,
      titleSpacing: titleSpacing,
      backgroundColor: backgroundColor,
      elevation: elevation,
      iconTheme: const IconThemeData(color: Colors.black),
      shape: shape,
      title: Text(
        title,
        style: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w700,
          fontSize: 21,
        ),
      ),
      actions: actions,
      automaticallyImplyLeading: automaticallyImplyLeading,
      leading: isLeading
          ? IconButton(
              icon: Icon(
                  Platform.isAndroid ? Icons.arrow_back : Icons.arrow_back_ios,
                  color: Colors.black),
              onPressed: onLeadingPressed,
            )
          : null,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
