import 'package:freezed_annotation/freezed_annotation.dart';

import '../extensions/helpers_extension.dart';

part 'username.freezed.dart';

/// Encapsulates a valid YouTube user name.
@freezed
class Username with _$Username {
  /// Initializes an instance of [Username].
  Username(String value)
      : value = parseUsername(value) ??
            (throw ArgumentError.value(
              value,
              'value',
              'Invalid username',
            ));

  final String value;

  ///  Converts [obj] to a [Username] by calling .toString on that object.
  /// If it is already a [Username], [obj] is returned
  factory Username.fromString(dynamic obj) {
    if (obj is Username) {
      return obj;
    }
    return Username(obj.toString());
  }

  /// Returns true if the given username is a valid username.
  static bool validateUsername(String name) {
    if (name.isNullOrWhiteSpace) {
      return false;
    }

    if (name.length > 20) {
      return false;
    }

    return true;
  }

  /// Parses a username from a url.
  static String? parseUsername(String nameOrUrl) {
    if (nameOrUrl.isEmpty) {
      return null;
    }

    if (validateUsername(nameOrUrl)) {
      return nameOrUrl;
    }

    final regMatch = RegExp(r'youtube\..+?/user/(.*?)(?:\?|&|/|$)')
        .firstMatch(nameOrUrl)
        ?.group(1);
    if (!regMatch.isNullOrWhiteSpace && validateUsername(regMatch!)) {
      return regMatch;
    }
    return null;
  }
}
