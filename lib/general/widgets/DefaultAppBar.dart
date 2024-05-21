import 'package:flutter/material.dart';

import '../MyColors.dart';

class DefaultAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Widget? leading;
  final List<Widget>? actions;
  final double? size;
  final bool showLeading;
  final Color? background;
  final void Function()? onBack;

  const DefaultAppBar({
    Key? key,
    required this.title,
    this.actions = const [],
    this.leading,
    this.onBack,
    this.size,
    this.showLeading = true,
    this.background,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: showLeading == true
          ? leading ??
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: [
                    InkWell(
                      onTap: onBack ?? Navigator.of(context).pop,
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: MyColors.black,
                        size: 20,
                      ),
                    ),
                  ],
                ),
              )
          : Container(),
      leadingWidth: 100,
      elevation: 0,
      backgroundColor: background ?? Colors.transparent,
      title: Text(
        title,
        style: TextStyle(
          color: MyColors.black,
        ),
        textAlign: TextAlign.center,
      ),
      centerTitle: true,
      actions: actions,
      titleTextStyle: TextStyle(
          color: const Color(0xffffffff),
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          fontSize: 18.0),
      toolbarHeight: 70,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(size ?? 70);
}
