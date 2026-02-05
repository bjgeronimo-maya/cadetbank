// coverage:ignore-file

import 'package:cadetbank/core/res/values/strings.dart';
import 'package:equatable/equatable.dart';

sealed class Error extends Equatable {
  final String message;
  const Error({required this.message});

  @override
  List<Object> get props => [message];
}

class DefaultError extends Error {
  const DefaultError({super.message = Strings.genericErrorMessage});
}
