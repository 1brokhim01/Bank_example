import 'package:flutter/material.dart';
import 'package:home25/core/constants/constants.dart';

Widget card_container({
  String? img1,
  String? img2,
  String? card_id1,
  String? card_id2,
  String? card_price1,
  String? card_price2,
  String? card_d1,
  String? card_d2,
  String? card_name1,
  String? card_name2,
}) =>
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                        img1!),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Column(
                    children: [
                      Text(
                        card_name1!,
                        style:
                            TextStyle(color: Kprimary.kPRimary5, fontSize: 17),
                      ),
                      Text(
                        card_id1!,
                        style: const TextStyle(
                          color: Color.fromARGB(255, 175, 169, 169),
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 100,
                  ),
                  Column(
                    children: [
                      Text(
                      card_price1!,
                        style: TextStyle(color: Kprimary.kPRimary5),
                      ),
                      Text(
                        card_d1!,
                        style: TextStyle(
                            color: Color.fromARGB(255, 175, 169, 169)),
                      )
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              Divider(
                color: Kprimary.kPRimary5,
              ),
              const SizedBox(
                height: 12,
              ),
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                        img2!),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Column(
                    children: [
                      Text(
                        card_name2!,
                        style:
                            TextStyle(color: Kprimary.kPRimary5, fontSize: 17),
                      ),
                      Text(
                        card_id2!,
                        style: const TextStyle(
                          color: Color.fromARGB(255, 175, 169, 169),
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 80,
                  ),
                  Column(
                    children: [
                      Text(
                        "\$3.719.00",
                        style: TextStyle(color: Kprimary.kPRimary5),
                      ),
                      Text(
                        card_d2!,
                        style: const TextStyle(
                            color: Color.fromARGB(255, 175, 169, 169)),
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
