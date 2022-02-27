import 'package:flutter/material.dart';
import 'package:home25/core/constants/constants.dart';
import 'package:home25/widgets/second_card.dart';
import 'package:home25/widgets/txt.dart';

class CardPage extends StatefulWidget {
  const CardPage({Key? key}) : super(key: key);

  @override
  _CardPageState createState() => _CardPageState();
}

class _CardPageState extends State<CardPage> {
  final _myController = PageController(initialPage: 0, keepPage: true);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Kprimary.kPRimary4,
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                c_txt(txt: "My Cards", color: Kprimary.kPRimary5, size: 25),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: PageView(
                  scrollDirection: Axis.horizontal,
                  reverse: false,
                  controller: _myController,
                  pageSnapping: true,
                  onPageChanged: (pageIndex) {
                    debugPrint("index $pageIndex");
                  },
                  children: [
                    second_card(
                        container_color: Kprimary.kPRimary1,
                        cardd_id: "*** *** *** 381",
                        card_dn: "12/3",
                        cardd_price: "\$1,250.00"),
                    second_card(
                        container_color: Kprimary.kPRimary3,
                        cardd_id: "*** *** *** 381",
                        card_dn: "12/3",
                        cardd_price: "\$1,250.00"),
                    second_card(
                        container_color: Kprimary.kPRimary6,
                        cardd_id: "*** *** *** 381",
                        card_dn: "12/3",
                        cardd_price: "\$1,250.00"),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 7,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    third_card(txt_price: "\$1234", txt_data: "Due:Feb,10"),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Kprimary.kPRimary1,
                              onPrimary: Kprimary.kPRimary2,
                              fixedSize: Size(140, 40),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25))),
                          onPressed: () {},
                          child: const Text("Settings"),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Kprimary.kPRimary1,
                              onPrimary: Kprimary.kPRimary2,
                              fixedSize: Size(140, 40),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25))),
                          onPressed: () {},
                          child: const Text("Transactions"),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Kprimary.kPRimary6,
                          borderRadius: BorderRadius.circular(15)),
                      height: 250,
                      width: double.infinity,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          lst_tile(
                            title: "View Statement",
                            icon1: Icons.text_snippet_outlined,
                            icon2: Icons.chevron_right_outlined,
                          ),
                          Divider(
                            color: Kprimary.kPRimary5,
                          ),
                          lst_tile(
                            title: "Change Pin",
                            icon1: Icons.published_with_changes_rounded,
                            icon2: Icons.chevron_right_outlined,
                          ),
                          Divider(
                            color: Kprimary.kPRimary5,
                          ),
                          lst_tile(
                            title: "Remove Card",
                            icon1: Icons.remove_circle_outline_outlined,
                            icon2: Icons.chevron_right_outlined,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  ListTile lst_tile({String? title,IconData? icon1,IconData? icon2}) {
    return ListTile(
                          leading: CircleAvatar(
                            backgroundColor: Kprimary.kPRimary5,
                            child: Icon(
                              icon1,
                              color: Kprimary.kPRimary6,
                            ),
                          ),
                          title: c_txt(
                            color: Kprimary.kPRimary5,
                            txt: title,
                          ),
                          trailing: Icon(icon2,color: Kprimary.kPRimary5,),
                        );
  }
}
