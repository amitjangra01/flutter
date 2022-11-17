import 'package:flutter/material.dart';

Widget mobileViewContainer(BuildContext context, {Widget? child}) {
  final size = MediaQuery.of(context).size;
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8),
      color: Colors.white,
    ),
    margin: const EdgeInsets.all(16.0),
    padding: const EdgeInsets.all(16.0),
    height: size.height * 0.15,
    width: size.width * 0.60,
    child: child,
  );
}
