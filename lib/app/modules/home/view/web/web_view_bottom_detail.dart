import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travala_clone/app/widget_extra/constants.dart';

Text kWebBottomDetailTileText(String text) {
  return Text(
    text,
    textScaleFactor: 1.2,
    style: style(color: Colors.grey),
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

class WebBottomDetails extends ConsumerWidget {
  const WebBottomDetails({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.8,
      color: titleBlueColor,
      padding: const EdgeInsets.only(left: 25, top: 40, right: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Travala.com',
                textScaleFactor: 2.0,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: size.height * 0.025),
              const Text(
                'We accept Credit Card, Debit Card \n and Cryptocurrency payments.',
                textScaleFactor: 1.1,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              const WebPaymentCardsView(),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'TRAVALA.COM',
                textScaleFactor: 1.3,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              SizedBox(height: size.height * 0.035),
              kWebBottomDetailTileText('About us'),
              SizedBox(height: size.height * 0.035),
              kWebBottomDetailTileText('AVA Token'),
              SizedBox(height: size.height * 0.035),
              kWebBottomDetailTileText('Smart Program'),
              SizedBox(height: size.height * 0.035),
              kWebBottomDetailTileText('Invite Program'),
              SizedBox(height: size.height * 0.035),
              kWebBottomDetailTileText('Price Gurantee'),
              SizedBox(height: size.height * 0.035),
              kWebBottomDetailTileText('Affiliate Program'),
              SizedBox(height: size.height * 0.035),
              kWebBottomDetailTileText('Travel Credits'),
              SizedBox(height: size.height * 0.035),
              kWebBottomDetailTileText('Travel Gift Cards'),
              SizedBox(height: size.height * 0.035),
              kWebBottomDetailTileText('Travala Members'),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'SUPPORT',
                textScaleFactor: 1.3,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              SizedBox(height: size.height * 0.035),
              kWebBottomDetailTileText('Help Center'),
              SizedBox(height: size.height * 0.035),
              kWebBottomDetailTileText('My Trip'),
              SizedBox(height: size.height * 0.035),
              kWebBottomDetailTileText('Terms & Conditions'),
              SizedBox(height: size.height * 0.035),
              kWebBottomDetailTileText('Privacy Policy'),
              SizedBox(height: size.height * 0.035),
              kWebBottomDetailTileText('Cookie Policy'),
              SizedBox(height: size.height * 0.035),
              kWebBottomDetailTileText('Contact us'),
              SizedBox(height: size.height * 0.035),
              kWebBottomDetailTileText('Partnership'),
              SizedBox(height: size.height * 0.035),
              kWebBottomDetailTileText('Concierge'),
              SizedBox(height: size.height * 0.035),
              kWebBottomDetailTileText('Media Contact'),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'USEFUL LINKS',
                textScaleFactor: 1.3,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              SizedBox(height: size.height * 0.035),
              kWebBottomDetailTileText('Mobile App'),
              SizedBox(height: size.height * 0.035),
              kWebBottomDetailTileText('Business Travel'),
              SizedBox(height: size.height * 0.035),
              kWebBottomDetailTileText('Payment Options'),
              SizedBox(height: size.height * 0.035),
              kWebBottomDetailTileText('Binance Travel'),
              SizedBox(height: size.height * 0.035),
              kWebBottomDetailTileText('Partner Network'),
              SizedBox(height: size.height * 0.035),
              kWebBottomDetailTileText('Bug Report'),
              SizedBox(height: size.height * 0.035),
              kWebBottomDetailTileText('Sitemap'),
              SizedBox(height: size.height * 0.035),
              kWebBottomDetailTileText('Activate NFT'),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'RESOURCES',
                textScaleFactor: 1.3,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              SizedBox(height: size.height * 0.035),
              kWebBottomDetailTileText('Official Blog'),
              SizedBox(height: size.height * 0.035),
              kWebBottomDetailTileText('Travel Advices'),
              SizedBox(height: size.height * 0.035),
              kWebBottomDetailTileText('Travel Guides'),
              SizedBox(height: size.height * 0.035),
              kWebBottomDetailTileText('Read Reviews'),
              SizedBox(height: size.height * 0.035),
              kWebBottomDetailTileText('Our Partners'),
              SizedBox(height: size.height * 0.035),
              kWebBottomDetailTileText('Coin Listing'),
              SizedBox(height: size.height * 0.035),
              kWebBottomDetailTileText('Careers'),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'COMMUNITY',
                textScaleFactor: 1.3,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              SizedBox(height: size.height * 0.035),
              socialButton(icon: FontAwesomeIcons.twitter, title: 'Twitter'),
              SizedBox(height: size.height * 0.035),
              socialButton(
                  icon: FontAwesomeIcons.instagram, title: 'instagram'),
              SizedBox(height: size.height * 0.035),
              socialButton(icon: FontAwesomeIcons.facebook, title: 'facebook'),
              SizedBox(height: size.height * 0.035),
              socialButton(icon: FontAwesomeIcons.youtube, title: 'youtube'),
            ],
          ),
        ],
      ),
    );
  }
}

class WebPaymentCardsView extends StatelessWidget {
  const WebPaymentCardsView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
      height: size.height * 0.35,
      width: size.width / 5,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const WebPaymentCardContainer(url: 'assets/images/visa.png'),
              SizedBox(width: size.width * 0.005),
              const WebPaymentCardContainer(
                  url: 'assets/images/mastercard.png'),
              SizedBox(width: size.width * 0.005),
              const WebPaymentCardContainer(
                  url: 'assets/images/americanExpress.png'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const WebPaymentCardContainer(url: 'assets/images/stripe.png'),
              SizedBox(width: size.width * 0.005),
              const WebPaymentCardContainer(url: 'assets/images/binance.png'),
              SizedBox(width: size.width * 0.005),
              const WebPaymentCardContainer(url: 'assets/images/wechat.png'),
            ],
          ),
          Row(
            children: const [
              WebPaymentCardContainer(url: 'assets/images/byHand.png'),
            ],
          )
        ],
      ),
    );
  }
}

class WebPaymentCardContainer extends StatelessWidget {
  final String url;
  const WebPaymentCardContainer({super.key, required this.url});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.06,
      height: size.height * 0.08,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
      child: Image.asset(url, fit: BoxFit.cover),
    );
  }
}
