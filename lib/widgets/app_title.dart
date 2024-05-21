import 'package:flutter/material.dart';


class AppTitle extends StatelessWidget {
  final void Function()? onPressed;
  final String title;
  const AppTitle({
    super.key, required this.title, this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 343,
      height: 32,
      child: Stack(
        children: [
          Positioned(
            left: 319,
            top: 0,
            child: Container(
              height: 32,
              child: Row(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Container(
        width: 24,
        height: 24,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 24,
              height: 24,
              child: Stack(children: [
             IconButton(onPressed: onPressed, icon: const Icon(Icons.arrow_forward_ios_outlined)) ,
              ]),
            ),
          ],
        ),
      ),
    ],
              ),
            ),
          ),
          Positioned(
            left: 89,
            top: 23,
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
    color: Color(0xFF292D32),
    fontSize: 15,
    fontFamily: 'Cairo',
    fontWeight: FontWeight.w600,
    height: 0.09,
              ),
            ),
          ),
        ],
      ),
    );
  }
}