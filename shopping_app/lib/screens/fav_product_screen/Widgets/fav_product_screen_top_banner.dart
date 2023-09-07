import 'package:flutter/material.dart';

import '../../add_to_cart_screen/add_to_cart_screen.dart';

class FavProductsScreenTopBanner extends StatefulWidget {
  const FavProductsScreenTopBanner({super.key});

  @override
  State<FavProductsScreenTopBanner> createState() =>
      _FavProductsScreenTopBannerState();
}

class _FavProductsScreenTopBannerState
    extends State<FavProductsScreenTopBanner> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromRGBO(42, 75, 160, 1),
      height: MediaQuery.sizeOf(context).height * 0.32,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  SizedBox(
                    height: 130,
                  ),
                  const Text(
                    "Hey, Baber",
                    style: TextStyle(
                        fontSize: 22,
                        color: Colors.white,
                        fontFamily: "Manrope"),
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AddToCartScreen()),
                      );
                    },
                    child: Icon(
                      Icons.shopping_cart,
                      color: Colors.white,
                      size: 24,
                    ),
                  ),
                ],
              ),
              Text(
                "Your",
                style: TextStyle(
                    fontSize: 45, color: Colors.white, fontFamily: "Manrope"),
              ),
              Text(
                "Favourite Products",
                style: TextStyle(
                    fontSize: 35,
                    color: Colors.white,
                    fontFamily: "Manrope",
                    fontWeight: FontWeight.w800),
              ),
            ]),
      ),
    );
  }
}

// class TopBanner extends StatefulWidget {
//   const TopBanner({super.key});

//   @override
//   State<TopBanner> createState() => _TopBannerState();
// }

// class _TopBannerState extends State<TopBanner> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: const Color.fromRGBO(42, 75, 160, 1),
//       height: MediaQuery.sizeOf(context).height * 0.30,
//       width: double.infinity,
//       child: const Padding(
//         padding: EdgeInsets.all(20.0),
//         child: Column(children: [
//           SizedBox(
//             height: 50,
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
               
//                 Text(
//                   "Hey, Baber",
//                   style: TextStyle(
//                       fontSize: 22, color: Colors.white, fontFamily: "Manrope"),
//                 ),
//                 Icon(
//                   Icons.shopping_cart,
//                   color: Colors.white,
//                   size: 24,
//                 ),
//               ],
//             ),
//               Text(
//                 "Shop",
//                 style: TextStyle(
//                     fontSize: 45, color: Colors.white, fontFamily: "Manrope"),
//               ),
//               Text(
//                 "By Category",
//                 style: TextStyle(
//                     fontSize: 55,
//                     color: Colors.white,
//                     fontFamily: "Manrope",
//                     fontWeight: FontWeight.w800),
//               ),
//               Spacer(),
//               Icon(
//                 Icons.search_rounded,
//                 color: Colors.white,
//                 size: 24,
//               ),
//               SizedBox(
//                 width: 20,
//               ),
//               Icon(
//                 Icons.shopping_cart,
//                 color: Colors.white,
//                 size: 24,
//               ),
//             ],
//           ),
//           SizedBox(
//             height: 40,
//           ),
//         ),
//       ),
//     );
//   }
// }
