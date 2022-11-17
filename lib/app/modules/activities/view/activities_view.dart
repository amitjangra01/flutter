import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../widget_extra/constants.dart';

class ActivitiesContainerView extends ConsumerWidget {
  const ActivitiesContainerView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    DateTime date = DateTime.now();
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        TextField(
          decoration: InputDecoration(
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(10),
              ),
              filled: true,
              prefixIcon: const Icon(
                FontAwesomeIcons.search,
                size: 20.0,
              ),
              fillColor: const Color(0xFFf2f4f8),
              hintText: 'Find amazing things to do'),
        ),
        TextField(
          decoration: InputDecoration(
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(10),
              ),
              filled: true,
              prefixIcon: const Icon(
                FontAwesomeIcons.calendar,
              ),
              fillColor: const Color(0xFFf2f4f8),
              hintText: '${date.day}/${date.month}/${date.year}'),
        ),
        ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.red),
            ),
            onPressed: () {},
            child: Text(
              'Search',
              style: style(color: Colors.white),
            ))
      ],
    );
  }
}
