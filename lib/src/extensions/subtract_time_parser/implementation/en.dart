import '../interface/interface.dart';

class En extends SubtractTimeParserInterface {
  @override
  Duration parse(int qty, String unit) {
    return switch (unit) {
      _ when unit.startsWith('second') => Duration(seconds: qty),
      _ when unit.startsWith('minute') => Duration(minutes: qty),
      _ when unit.startsWith('hour') => Duration(hours: qty),
      _ when unit.startsWith('day') => Duration(days: qty),
      _ when unit.startsWith('week') => Duration(days: qty * 7),
      _ when unit.startsWith('month') => Duration(days: qty * 30),
      _ when unit.startsWith('year') => Duration(days: qty * 365),
      _ => throw StateError("Couldn't parse $unit unit of time. "
          'Please report this to the project page!')
    };
  }
}
