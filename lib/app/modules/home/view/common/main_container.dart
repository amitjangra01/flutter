import 'package:flutter/material.dart';
import '../../../../widget_extra/constants.dart';

class MainContainer extends StatelessWidget {
  final Widget child;
  final Image? image;
  const MainContainer({super.key, required this.child, this.image});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      alignment: Alignment.center,
      children: [
        SizedBox(
          height: size.height * 0.85,
          width: size.width,
          child: backgroundImage('stays_background.png'),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'BOOK HOTELS AND SAVE UP TO 40%',
              textScaleFactor: 1.5,
              style: style(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: size.height * 0.035),
            Text(
              'Best Prices Guaranteed On 2,200,000+ \nHotels & Accommodations Worldwide',
              textScaleFactor: 1.3,
              style: style(
                color: Colors.white,
              ),
            ),
            SizedBox(height: size.height * 0.05),
            child,
          ],
        )
      ],
    );
  }
}

Image backgroundImage(String imageName) {
  return Image.asset(
    'assets/images/$imageName',
    fit: BoxFit.cover,
  );
}
