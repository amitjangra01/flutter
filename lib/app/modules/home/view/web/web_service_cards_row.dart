import 'package:flutter/material.dart';

import 'web_service_card.dart';

class WebServiceCardsRow extends StatelessWidget {
  const WebServiceCardsRow({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(
          height: size.height * 0.35,
          width: size.width,
          child: ListView(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            children: const [
              WebServiceCard(
                heading: '24/7 Customer Support',
                description:
                    'Do you need help or have a question? Contach our proactive 24/7 customer support team via live chat, email, hotline or online ticket system.',
              ),
              WebServiceCard(
                heading: 'Best Price Gurantee',
                description:
                    'We gurantee we won\'t be beaten on price. If you find a cheaper hotel deal on another website after you book with us, we\'ll refund the difference!',
              ),
              WebServiceCard(
                heading: 'Multi-Payment Options',
                description:
                    'We offer various payment methods to make a booking with us. Choose from Credit and Debit Cards, and the leading Cryptocurrencies.',
              ),
              WebServiceCard(
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
