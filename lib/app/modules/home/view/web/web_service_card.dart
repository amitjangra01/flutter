import 'package:flutter/material.dart';

class WebServiceCard extends StatelessWidget {
  final String heading;
  final String description;
  const WebServiceCard(
      {super.key, required this.heading, required this.description});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(left: 16, top: 18, bottom: 12),
      height: size.height * 0.4,
      width: size.width * 0.4,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                heading,
                textScaleFactor: 1.4,
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                description,
                textScaleFactor: 1.1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
