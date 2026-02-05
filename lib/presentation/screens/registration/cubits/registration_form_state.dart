import 'package:freezed_annotation/freezed_annotation.dart';

part 'registration_form_state.freezed.dart';

@freezed
class RegistrationFormState with _$RegistrationFormState {
  const factory RegistrationFormState({
    @Default('') String name,
    @Default('') String email,
    @Default('') String mobileNumber,
    @Default('') String password,
  }) = _RegistrationFormState;
}
