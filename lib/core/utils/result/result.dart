import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:cadetbank/core/res/errors/error.dart';

part 'result.freezed.dart';

@freezed
class Result<T> with _$Result<T> {
  Result._();

  factory Result.success(T result) = Success<T>;

  factory Result.failure(Error error) = Failure<T>;

  bool get isSuccess => this is Success<T>;

  bool get isFailure => this is Failure<T>;

  T? get valueOrNull => (this is Success<T>) ? (this as Success<T>).result : null;

  Error? get errorOrNull => (this is Failure<T>) ? (this as Failure<T>).error : null;
}
