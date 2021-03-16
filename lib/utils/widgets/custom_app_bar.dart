import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget title;
  final List<Widget> actions;
  final Widget leading;
  final Color color;

  CustomAppBar({
    this.title,
    this.actions,
    this.leading,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Padding(
        padding: EdgeInsets.only(bottom: 4.0),
        child: this.title,
      ),
      centerTitle: false,
      // backgroundColor: this.color != null ? this.color : Color(0xff262829),
      elevation: 0.0,
      actions: this.actions,
      leading: this.leading != null ? this.leading : null,
      automaticallyImplyLeading: false,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(60.0);
}
