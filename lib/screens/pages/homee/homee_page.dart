import 'package:flutter/material.dart';
import 'package:home25/core/constants/constants.dart';
import 'package:home25/core/constants/p_m_const.dart';
import 'package:home25/widgets/cards.dart';
import 'package:home25/widgets/circle_ava.dart';

import '../../../widgets/txt.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Kprimary.kPRimary1,
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 35,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "Good Morning!",
                          style: TextStyle(color: Colors.white, fontSize: 17),
                        ),
                        CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://images.unsplash.com/photo-1645812820242-a620e8f5a737?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyNXx8fGVufDB8fHx8&auto=format&fit=crop&w=800&q=60"),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 9,
                    ),
                    const Text(
                      "John Smith",
                      style: TextStyle(color: Colors.white, fontSize: 17),
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            "\$ 8,645,000",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 19,
                                fontWeight: FontWeight.bold),
                          ),
                        ]),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            "Aviable Balance",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                            ),
                          ),
                        ]),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 9,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(35),
                    topLeft: Radius.circular(35),
                  ),
                  color: Kprimary.kPRimary4,
                ),
                child: Padding(
                  padding: PaddingMarginConst.kExtraLargePadding,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          circle_ava(icon: Icons.compare_arrows_sharp),
                          circle_ava(icon: Icons.text_snippet_outlined),
                          circle_ava(icon: Icons.phone_android_outlined),
                          circle_ava(icon: Icons.more_horiz_outlined),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            c_txt(
                              txt: "Transfer",
                              color: Kprimary.kPRimary5,
                            ),
                            const SizedBox(
                              width: 45,
                            ),
                            c_txt(
                              txt: "Bills",
                              color: Kprimary.kPRimary5,
                            ),
                            const SizedBox(
                              width: 35,
                            ),
                            c_txt(
                              txt: "Recharge",
                              color: Kprimary.kPRimary5,
                            ),
                            const SizedBox(
                              width: 30,
                            ),
                            c_txt(
                              txt: "More",
                              color: Kprimary.kPRimary5,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          c_txt(
                            txt: "My Cards",
                            size: 20,
                            color: Kprimary.kPRimary5,
                          ),
                          c_txt(
                            txt: "View All",
                            size: 14,
                            color: Kprimary.kPRimary5,
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 150,
                            width: 380,
                            decoration: BoxDecoration(
                              color: Kprimary.kPRimary6,
                              borderRadius: BorderRadius.circular(35),
                            ),
                            child: card_container(
                              img1: "https://pbs.twimg.com/profile_images/1417834595899232256/YzltM_gk_400x400.png",
                              img2: "https://pbs.twimg.com/profile_images/755087531717201920/fUmSHtYR_400x400.jpg",
                              card_name1: "Visa Card",
                              card_name2: "Master Card",
                              card_d1: "12/3",
                              card_d2: "9/12",
                              card_id1: "**32432",
                              card_id2: "**23415",
                              card_price1: "\$4132",
                              card_price2: "\$3223",
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              c_txt(
                                txt: "Recent Transactions",
                                size: 20,
                                color: Kprimary.kPRimary5,
                              ),
                              c_txt(
                                txt: "View All",
                                size: 14,
                                color: Kprimary.kPRimary5,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Container(
                            height: 150,
                            width: 380,
                            decoration: BoxDecoration(
                              color: Kprimary.kPRimary6,
                              borderRadius: BorderRadius.circular(35),
                            ),
                            child: card_container(
                              img1: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSuAXqC_7U3MKMJ6Ntd7hi7uIQvrr8flrvGEQ&usqp=CAU",
                              img2: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRkYMv1rq4KSpx7TqPHp5LDrD-XiMUmefNslA&usqp=CAU",
                              card_name1: "Grocery",
                              card_name2: "IESCO Bill",
                              card_d1: "",
                              card_d2: "",
                              card_id1: "",
                              card_id2: "",
                              card_price1: "-\$413",
                              card_price2: "-\$322",
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
