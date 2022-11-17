import 'package:flutter/material.dart';

class WebReviewCard extends StatelessWidget {
  final String? name;
  final String? review;
  final String? daysAgo;
  const WebReviewCard({
    super.key,
    this.name,
    this.review,
    this.daysAgo = '2 days ago',
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Card(
      margin: const EdgeInsets.symmetric(
        vertical: 8.0,
        horizontal: 8.0,
      ),
      child: Container(
        padding: const EdgeInsets.all(16.0),
        width: size.width * 0.25,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '$name',
              textScaleFactor: 1.1,
              style: const TextStyle(
                color: Colors.grey,
              ),
            ),
            Text(
              '$review',
              textScaleFactor: 1.2,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '$daysAgo',
              textScaleFactor: 0.9,
            ),
          ],
        ),
      ),
    );
  }
}
