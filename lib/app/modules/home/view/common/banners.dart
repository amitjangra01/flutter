import 'package:flutter/widgets.dart';

class Banners extends StatelessWidget {
  const Banners({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
      padding: EdgeInsets.symmetric(
          horizontal: size.width * 0.035, vertical: size.width * 0.05),
      height: size.width * 0.25,
      width: size.width,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Image.asset('assets/images/banner1.png', fit: BoxFit.cover),
          SizedBox(width: size.width * 0.04),
          Image.asset('assets/images/banner2.png', fit: BoxFit.cover),
          SizedBox(width: size.width * 0.04),
          Image.asset('assets/images/banner3.png', fit: BoxFit.cover),
        ],
      ),
    );
  }
}
