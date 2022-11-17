import 'package:flutter/material.dart';

import '../widget/service_card.dart';

class MobileServiceCardsRow extends StatelessWidget {
  const MobileServiceCardsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 240,
          child: ListView(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            children: const [
              ServiceCard(
                heading: '24/7 Customer Support',
                description:
                    'Do you need help or have a question? Contach our proactive 24/7 customer support team via live chat, email, hotline or online ticket system.',
              ),
              ServiceCard(
                heading: 'Best Price Gurantee',
                description:
                    'We gurantee we won\'t be beaten on price. If you find a cheaper hotel deal on another website after you book with us, we\'ll refund the difference!',
              ),
              ServiceCard(
                heading: 'Multi-Payment Options',
                description:
                    'We offer various payment methods to make a booking with us. Choose from Credit and Debit Cards, and the leading Cryptocurrencies.',
              ),
              ServiceCard(
                heading: 'Real Value Rewards',
                description:
                    'Earn rewards easily and quickly with our innovative tokenised incentive programs including Smart discounts, Invite, Loyalty and Givebacks.',
              ),
            ],
          ),
        ),
        const SizedBox(
          child: Divider(),
        ),
      ],
    );
  }
}
