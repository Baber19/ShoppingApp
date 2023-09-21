import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'trackorder.dart';

class Order2 extends StatefulWidget {
  const Order2({super.key});

  @override
  State<Order2> createState() => _Order2State();
}

class _Order2State extends State<Order2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const TrackOrder(),
            ),
          );
        },
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: SvgPicture.asset(
            "lib/assets/images/Orders2.svg",
          ),
        ),
      ),
    );
  }
}
