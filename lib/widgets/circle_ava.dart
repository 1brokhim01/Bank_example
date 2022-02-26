import 'package:flutter/material.dart';
import '../core/constants/constants.dart';

Widget circle_ava({IconData? icon}) => Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CircleAvatar(
              backgroundColor: Kprimary.kPRimary2,
              radius: 34,
              child: Icon(
                icon,
                color: Kprimary.kPRimary1,
                size: 35,
              ),
            ),
          ],
        ),
      ],
    );
