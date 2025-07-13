import '../interface/interface.dart';

class JaJP extends SubtractTimeParserInterface {
  @override
  Duration parse(int qty, String unit) {
    print("$qty $unit");
    return switch (unit) {
      _ when unit.startsWith('秒') => Duration(seconds: qty),
      _ when unit.startsWith('分') => Duration(minutes: qty),
      _ when unit.startsWith('時間') => Duration(hours: qty),
      _ when unit.startsWith('日') => Duration(days: qty),
      _ when unit.startsWith('週') => Duration(days: qty * 7),
      _ when unit.startsWith('か月') => Duration(days: qty * 30),
      _ when unit.startsWith('年') => Duration(days: qty * 365),
      _ => throw StateError("Couldn't parse $unit unit of time. "
          'Please report this to the project page!')
    };
  }
}
