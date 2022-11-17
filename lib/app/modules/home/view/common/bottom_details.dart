import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travala_clone/app/widget_extra/constants.dart';

Text kBottomDetailTileText(String text) {
  return Text(
    text,
    textScaleFactor: 1.2,
    style: style(color: Colors.grey),
  );
}

Widget customExpansionTile(
    {required String title, required List<Widget> children}) {
  return ExpansionTile(
    childrenPadding: const EdgeInsets.all(16.0),
    expandedAlignment: Alignment.centerLeft,
    expandedCrossAxisAlignment: CrossAxisAlignment.start,
    backgroundColor: titleBlueColor,
    collapsedBackgroundColor: titleBlueColor,
    collapsedIconColor: Colors.white,
    title: Text(
      title,
      style: style(color: Colors.white),
    ),
    children: children,
  );
}

Widget socialButton({required IconData icon, required String title}) {
  return GestureDetector(
    onTap: () {},
    child: Row(
      children: [
        Icon(
          icon,
          color: Colors.grey,
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          title,
          textScaleFactor: 1.2,
          style: const TextStyle(color: Colors.grey),
        ),
      ],
    ),
  );
}

class BottomDetails extends ConsumerWidget {
  const BottomDetails({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          color: titleBlueColor,
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: const [
              Text(
                'Travala.com',
                textScaleFactor: 2.0,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Text(
                'We accept Credit Card, Debit Card \n and Cryptocurrency payments.',
                textScaleFactor: 1.1,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              PaymentCardsView(),
            ],
          ),
        ),
        customExpansionTile(
          title: 'TRAVALA.COM',
          children: [
            kBottomDetailTileText('About us'),
            kBottomDetailTileText('AVA Token'),
            kBottomDetailTileText('Smart Program'),
            kBottomDetailTileText('Invite Program'),
            kBottomDetailTileText('Price Gurantee'),
            kBottomDetailTileText('Affiliate Program'),
            kBottomDetailTileText('Travel Credits'),
            kBottomDetailTileText('Travel Gift Cards'),
            kBottomDetailTileText('Travala Members'),
          ],
        ),
        customExpansionTile(
          title: 'SUPPORT',
          children: [
            kBottomDetailTileText('Help Center'),
            kBottomDetailTileText('My Trip'),
            kBottomDetailTileText('Terms & Conditions'),
            kBottomDetailTileText('Privacy Policy'),
            kBottomDetailTileText('Cookie Policy'),
            kBottomDetailTileText('Contact us'),
            kBottomDetailTileText('Partnership'),
            kBottomDetailTileText('Concierge'),
            kBottomDetailTileText('Media Contact'),
          ],
        ),
        customExpansionTile(
          title: 'USEFUL LINKS',
          children: [
            kBottomDetailTileText('Mobile App'),
            kBottomDetailTileText('Business Travel'),
            kBottomDetailTileText('Payment Options'),
            kBottomDetailTileText('Binance Travel'),
            kBottomDetailTileText('Partner Network'),
            kBottomDetailTileText('Bug Report'),
            kBottomDetailTileText('Sitemap'),
            kBottomDetailTileText('Activate NFT'),
          ],
        ),
        customExpansionTile(
          title: 'RESOURCES',
          children: [
            kBottomDetailTileText('Official Blog'),
            kBottomDetailTileText('Travel Advices'),
            kBottomDetailTileText('Travel Guides'),
            kBottomDetailTileText('Read Reviews'),
            kBottomDetailTileText('Our Partners'),
            kBottomDetailTileText('Coin Listing'),
            kBottomDetailTileText('Careers'),
          ],
        ),
        customExpansionTile(
          title: 'USEFUL LINKS',
          children: [
            kBottomDetailTileText('Mobile App'),
            kBottomDetailTileText('Business Travel '),
            kBottomDetailTileText('Payment Options'),
            kBottomDetailTileText('Binance Travel'),
            kBottomDetailTileText('Partner Network'),
            kBottomDetailTileText('Bug Report'),
            kBottomDetailTileText('Sitemap'),
            kBottomDetailTileText('Activate NFT'),
          ],
        ),
        customExpansionTile(
          title: 'COMMUNITY',
          children: [
            socialButton(icon: FontAwesomeIcons.twitter, title: 'Twitter'),
            const SizedBox(height: 10),
            socialButton(icon: FontAwesomeIcons.instagram, title: 'instagram'),
            const SizedBox(height: 10),
            socialButton(icon: FontAwesomeIcons.facebook, title: 'facebook'),
            const SizedBox(height: 10),
            socialButton(icon: FontAwesomeIcons.youtube, title: 'youtube'),
          ],
        ),
      ],
    );
  }
}

class PaymentCardsView extends StatelessWidget {
  const PaymentCardsView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
      height: size.height * 0.15,
      width: size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const PaymentCardContainer(url: 'assets/images/visa.png'),
              SizedBox(width: size.width * 0.035),
              const PaymentCardContainer(url: 'assets/images/mastercard.png'),
              SizedBox(width: size.width * 0.035),
              const PaymentCardContainer(
                  url: 'assets/images/americanExpress.png'),
              SizedBox(width: size.width * 0.035),
              const PaymentCardContainer(url: 'assets/images/stripe.png'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const PaymentCardContainer(url: 'assets/images/byHand.png'),
              SizedBox(width: size.width * 0.035),
              const PaymentCardContainer(url: 'assets/images/binance.png'),
              SizedBox(width: size.width * 0.035),
              const PaymentCardContainer(url: 'assets/images/wechat.png'),
            ],
          ),
        ],
      ),
    );
  }
}

class PaymentCardContainer extends StatelessWidget {
  final String url;
  const PaymentCardContainer({super.key, required this.url});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.20,
      height: size.height * 0.05,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
      child: Image.asset(url, fit: BoxFit.cover),
    );
  }
}
