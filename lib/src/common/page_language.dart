enum PageLanguage {
  enUS,
  jaJP,
  ;

  String get text => switch (this) {
        enUS => "en",
        jaJP => "ja-JP",
      };

  Map<String, String> get payloadPart => switch (this) {
        enUS => {},
        jaJP => {"hl": "ja", "gl": "JP"},
      };
}
