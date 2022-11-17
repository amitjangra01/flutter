import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FlightsWebContainerView extends ConsumerWidget {
  const FlightsWebContainerView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        SizedBox(
          width: size.width * 0.25,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Icon(FontAwesomeIcons.planeUp),
              Text('New Delhi'),
              Icon(Icons.compare_arrows),
              Icon(Icons.location_pin),
              Text(
                'Singapore',
                style: TextStyle(color: Colors.grey),
              )
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Icon(Icons.calendar_month_outlined),
            SizedBox(width: size.width * 0.01),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('21 Nov 2022'),
                SizedBox(height: size.height * 0.01),
                const Text(
                  'Monday',
                  style: TextStyle(color: Colors.grey),
                )
              ],
            )
          ],
        ),
        const VerticalDivider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Icon(Icons.people),
            SizedBox(width: size.width * 0.01),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Passenger 1'),
                SizedBox(height: size.height * 0.01),
                const Text(
                  'Economy',
                  style: TextStyle(color: Colors.grey),
                )
              ],
            )
          ],
        ),
        ElevatedButton(
          onPressed: () {},
          child: const Text('Search'),
        ),
      ],
    );
  }
}
