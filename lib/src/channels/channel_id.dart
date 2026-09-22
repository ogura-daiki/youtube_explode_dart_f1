import 'package:freezed_annotation/freezed_annotation.dart';

import '../extensions/helpers_extension.dart';

part 'channel_id.freezed.dart';

/// Encapsulates a valid YouTube channel ID.
@freezed
class ChannelId with _$ChannelId {
  /// Initializes an instance of [ChannelId]
  
  ChannelId(String value)
      : value = parseChannelId(value) ??
            (throw ArgumentError.value(
              value,
              'value',
              'Invalid channel id',
            ));

  final String value;

  ///  Converts [obj] to a [ChannelId] by calling .toString on that object.
  /// If it is already a [ChannelId], [obj] is returned
  factory ChannelId.fromString(dynamic obj) {
    if (obj is ChannelId) {
      return obj;
    }
    return ChannelId(obj.toString());
  }

  /// Returns true if the given id is a valid channel id.
  static bool validateChannelId(String id) {
    if (id.isNullOrWhiteSpace) {
      return false;
    }

    if (!id.startsWith('UC')) {
      return false;
    }

    if (id.length != 24) {
      return false;
    }

    return !RegExp(r'[^0-9a-zA-Z_\-]').hasMatch(id);
  }

  /// Parses a channel id from an url.
  /// Returns null if the username is not found.
  static String? parseChannelId(String url) {
    if (url.isEmpty) {
      return null;
    }

    if (validateChannelId(url)) {
      return url;
    }

    final regMatch = RegExp(r'youtube\..+?/channel/(.*?)(?:\?|&|/|$)')
        .firstMatch(url)
        ?.group(1);
    if (!regMatch.isNullOrWhiteSpace && validateChannelId(regMatch!)) {
      return regMatch;
    }
    return null;
  }

  @override
  String toString() => value;
}
