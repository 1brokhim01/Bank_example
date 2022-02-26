import 'package:flutter/material.dart';

Text c_txt({String? txt, double? size, Color? color}) {
  return Text(
    txt!,
    style: TextStyle(
      fontSize: size,
      color: color,
    ),
  );
}
