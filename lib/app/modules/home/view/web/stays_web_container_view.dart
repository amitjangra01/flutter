import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DatePickerState extends StateNotifier<DateTime?> {
  DatePickerState() : super(DateTime.now());

  void update(DateTime date) {
    state = date;
  }
}

final datePickerStateProvider =
    StateNotifierProvider<DatePickerState, DateTime?>(
        (ref) => DatePickerState());

class StaysWebContainerView extends ConsumerWidget {
  const StaysWebContainerView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final date = ref.watch(datePickerStateProvider);
    final size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        SizedBox(
          width: size.width * 0.25,
          child: TextField(
            decoration: InputDecoration(
              border: UnderlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(25),
              ),
              filled: true,
              hintText: 'Search for places or properties',
              prefixIcon: const Padding(
                padding: EdgeInsets.only(left: 12.0),
                child: Icon(
                  Icons.search,
                ),
              ),
              fillColor: const Color(0xFFf2f4f8),
            ),
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
            const Icon(Icons.calendar_month_outlined),
            SizedBox(width: size.width * 0.01),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('22 Nov 2022'),
                SizedBox(height: size.height * 0.01),
                const Text(
                  'Tuesday',
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
                const Text('2 Adults - 0 children'),
                SizedBox(height: size.height * 0.01),
                const Text(
                  '1 room',
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
