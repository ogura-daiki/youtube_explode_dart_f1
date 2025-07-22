import '../../common/page_language.dart';
import 'implementation/en.dart';
import 'implementation/jaJP.dart';
import 'interface/interface.dart';

class SubtractTimeParser extends SubtractTimeParserInterface {
  final PageLanguage language;
  SubtractTimeParser(this.language);

  @override
  Duration parse(int qty, String unit) {
    try {
      return switch (language) {
        PageLanguage.enUS => En().parse(qty, unit),
        PageLanguage.jaJP => JaJP().parse(qty, unit),
      };
    } catch (e) {
      return En().parse(qty, unit);
    }
  }
}
