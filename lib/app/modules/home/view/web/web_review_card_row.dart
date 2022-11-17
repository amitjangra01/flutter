import 'package:flutter/material.dart';

import 'web_review_car.dart';

class WebReviewsCardRow extends StatelessWidget {
  const WebReviewsCardRow({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 10),
        const Padding(
          padding: EdgeInsets.only(left: 16.0),
          child: Text(
            'WHAT OUR CUSTOMERS SAY',
            textScaleFactor: 1.3,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(height: 10),
        SizedBox(
          height: 150,
          width: size.width,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: const [
              WebReviewCard(
                name: 'customer',
                review: 'very good',
              ),
              WebReviewCard(
                name: 'Lars Erik Mogstad',
                review: 'Good Fixed my Problem fast',
                daysAgo: '3 days ago',
              ),
              WebReviewCard(
                name: 'Miroslav p0povic',
                review: 'Everything was perfect and easy',
                daysAgo: '4 days ago',
              ),
              WebReviewCard(
                name: 'paid with crypto',
                review: 'I was able to book and pay through my Binance app.',
                daysAgo: '5 days ago',
              ),
              WebReviewCard(
                name: 'unknown',
                review: 'satisfied with the services.',
                daysAgo: '6 days ago',
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 24.0,
          child: Divider(),
        )
      ],
    );
  }
}
