import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travala_clone/app/widget_extra/constants.dart';

class WebViewAppBar extends StatelessWidget {
  const WebViewAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      title: Expanded(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Text(
              'Travala.com',
              textScaleFactor: 2.0,
              style: mainTitleStyle,
            ),
            TextButton(
              onPressed: () {},
              style: blackColor,
              child: const Text('Stays'),
            ),
            TextButton(
              onPressed: () {},
              style: blackColor,
              child: const Text('Flights'),
            ),
            TextButton(
              onPressed: () {},
              style: blackColor,
              child: const Text('Activities'),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
              child: const Text('Activate NFT'),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF1f2e5f)),
              child: const Text('Explore NFT'),
            ),
            TextButton(
              onPressed: () {},
              style: greenColor,
              child: const Text('MY TRIP'),
            ),
            TextButton(
              onPressed: () {},
              style: blackColor,
              child: const Text('VOTE'),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                FontAwesomeIcons.globe,
                color: Colors.black,
              ),
            ),
            TextButton(
              onPressed: () {},
              style: blackColor,
              child: const Text('LOG IN'),
            ),
            OutlinedButton(
              onPressed: () {},
              child: const Text(
                'Sign Up Now',
                style: TextStyle(color: titleBlueColor),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
