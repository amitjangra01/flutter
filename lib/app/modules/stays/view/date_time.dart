import 'package:flutter_riverpod/flutter_riverpod.dart';

class DateTimeNotifier extends StateNotifier<DateTime> {
  DateTimeNotifier() : super(DateTime.now());

  
}
