import 'package:flutter/material.dart';

class CountriesView extends StatelessWidget {
  const CountriesView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 8.0, right: 8.0, bottom: 8.0),
          child: Text(
            'TOP COUNTRIES AND TERRITORIES',
            textScaleFactor: 1.3,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(
          height: 300,
          width: 300,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: const [
              Country(
                name: 'Canada',
                url:
                    'https://lp-cms-production.imgix.net/2019-06/GettyImages-520002693_high.jpg?fit=crop&q=40&sharp=10&vib=20&auto=format&ixlib=react-8.6.4',
              ),
              Country(
                name: 'Mexico',
                url:
                    'https://res.cloudinary.com/wow-club/image/upload/v1583489909/ssi82dxy89nilbebs9ei.jpg',
              ),
              Country(
                name: 'New Zealand',
                url:
                    'https://natureconservancy-h.assetsadobe.com/is/image/content/dam/tnc/nature/en/photos/LakeWakatipuNewZealand.jpg?crop=0,25,4000,2200&wid=4000&hei=2200&scl=1.0',
              ),
              Country(
                name: 'Italy',
                url:
                    'https://lp-cms-production.imgix.net/2019-06/GettyImages-520002693_high.jpg?fit=crop&q=40&sharp=10&vib=20&auto=format&ixlib=react-8.6.4',
              ),
              SizedBox(
                width: 16.0,
              )
            ],
          ),
        ),
      ],
    );
  }
}

class Country extends StatelessWidget {
  final String name;
  final String url;

  const Country({super.key, required this.url, required this.name});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
          ),
          margin: const EdgeInsets.only(left: 16.0, bottom: 16.0),
          width: 300,
          height: 300,
          child: Image.network(url, fit: BoxFit.cover),
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 24.0, top: 260),
              child: Text(
                name,
                style: const TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

Widget countryContainer({
  required String url,
}) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8),
      color: Colors.white,
    ),
    margin: const EdgeInsets.all(16.0),
    padding: const EdgeInsets.all(16.0),
    height: 300,
    width: 300,
    child: Image.network(
      url,
      fit: BoxFit.cover,
    ),
  );
}
