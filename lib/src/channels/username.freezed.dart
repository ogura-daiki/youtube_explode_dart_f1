// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'username.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Username {
  /// User name as string.
  String get value;

  @override
  bool operator ==(Object other) {
    final _this = this as Username;
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Username &&
            (identical(other.value, _this.value) ||
                other.value == _this.value));
  }

  @override
  int get hashCode {
    final _this = this as Username;
    return Object.hash(runtimeType, _this.value);
  }

  @override
  String toString() {
    final _this = this as Username;
    return 'Username(value: ${_this.value})';
  }
}

/// Adds pattern-matching-related methods to [Username].
extension UsernamePatterns on Username {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Username value)? _,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Username() when _ != null:
        return _(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Username value) _,
  }) {
    final _that = this;
    switch (_that) {
      case _Username():
        return _(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Username value)? _,
  }) {
    final _that = this;
    switch (_that) {
      case _Username() when _ != null:
        return _(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? _,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Username() when _ != null:
        return _(_that.value);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) _,
  }) {
    final _that = this;
    switch (_that) {
      case _Username():
        return _(_that.value);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? _,
  }) {
    final _that = this;
    switch (_that) {
      case _Username() when _ != null:
        return _(_that.value);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _Username implements Username {
  const _Username(this.value);

  /// User name as string.
  @override
  final String value;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Username &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode {
    return Object.hash(runtimeType, value);
  }

  @override
  String toString() {
    return 'Username._(value: $value)';
  }
}

// dart format on
