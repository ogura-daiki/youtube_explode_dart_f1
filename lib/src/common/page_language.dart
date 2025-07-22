enum PageLanguage {
  en,
  jaJP,
  ;

  String get text => switch (this) {
        en => "en",
        jaJP => "ja-JP",
      };

  Map<String, String> get payloadPart => switch (this) {
        en => {},
        jaJP => {"hl": "ja", "gl": "JP"},
      };
}
