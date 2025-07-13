enum PageLanguage {
  en,
  jaJP,
  ;

  String get text => switch (this) {
        en => "en",
        jaJP => "ja-JP",
      };
}
