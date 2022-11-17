import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../widget_extra/constants.dart';

class DatePickerState extends StateNotifier<DateTime?> {
  DatePickerState() : super(DateTime.now());

  void update(DateTime date) {
    state = date;
  }
}

final datePickerStateProvider =
    StateNotifierProvider<DatePickerState, DateTime?>(
        (ref) => DatePickerState());

class StaysContainerView extends ConsumerWidget {
  const StaysContainerView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final date = ref.watch(datePickerStateProvider);
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        TextField(
          decoration: InputDecoration(
            border: UnderlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(25),
            ),
            filled: true,
            hintText: 'Delhi Cantt Railway Station',
            suffixIcon: const Padding(
              padding: EdgeInsets.only(right: 12.0),
              child: Icon(
                Icons.search,
                // color: titleBlueColor,
              ),
            ),
            fillColor: const Color(0xFFf2f4f8),
          ),
          maxLines: 1,
        ),
        GestureDetector(
          onTap: () async {
            DateTime? newDate = await showDatePicker(
              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime(2000),
              lastDate: DateTime(2100),
            );
            if (newDate == null) {
              return;
            }

            ref.read(datePickerStateProvider.notifier).update(newDate);
          },
          child: SizedBox(
            height: 60,
            width: 150,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('CHECK-IN'),
                    Text(
                      '${date?.day}/${date?.month}/${date?.year}',
                    ),
                  ],
                ),
                const Icon(Icons.arrow_forward),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('CHECK-OUT'),
                    Text('${date?.day}/${date?.month}/${date?.year}'),
                  ],
                ),
              ],
            ),
          ),
        ),
        Container(
          child: Row(
            children: const [
              Icon(Icons.people, color: Colors.blue),
              Text('1 room - 2 adults - 0 child'),
            ],
          ),
        ),
        ElevatedButton(
          onPressed: () {},
          child: Text(
            'Search',
            style: style(color: Colors.white),
          ),
        ),
      ],
    );
  }
}
