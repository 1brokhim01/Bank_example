import 'package:flutter/material.dart';
import 'package:home25/widgets/txt.dart';
import '../core/constants/constants.dart';

// second_card_txt({String? cardd_id,String? cardd_price,String? card_dn}) => Padding(
//       padding: const EdgeInsets.all(12.0),
//       child:
//       Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         children: [
//           c_txt(txt: cardd_id, color: Kprimary.kPRimary4),
//           c_txt(txt: "Avaible Blance", color: Kprimary.kPRimary5),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               c_txt(txt: cardd_price, color: Kprimary.kPRimary5),
//               c_txt(txt: card_dn, color: Kprimary.kPRimary5),
//             ],
//           ),
//         ],
//       ),
//     );
second_card(
        {String? cardd_id,
        String? cardd_price,
        String? card_dn,
        Color? container_color}) =>
    Container(
      decoration: BoxDecoration(
        color: container_color,
        borderRadius: BorderRadius.circular(25),
      ),
      height: 80,
      width: 180,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            c_txt(txt: cardd_id, color: Kprimary.kPRimary4),
            c_txt(txt: "Avaible Blance", color: Kprimary.kPRimary5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                c_txt(txt: cardd_price, color: Kprimary.kPRimary5),
                c_txt(txt: card_dn, color: Kprimary.kPRimary5),
              ],
            ),
          ],
        ),
      ),
    );

third_card({String? txt_price,String? txt_data}) => Container(
      decoration: BoxDecoration(
          color: Kprimary.kPRimary1, borderRadius: BorderRadius.circular(15)),
      height: 70,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            c_txt(
              txt: "Make a Payment",
              color: Kprimary.kPRimary5,
            ),
            const SizedBox(
              width: 120,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("$txt_price"),
                Text("$txt_data"),
              ],
            ),
          ],
        ),
      ),
    );
