import 'package:cadetbank/presentation/screens/registration/cubits/registration_form_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegistrationFormCubit extends Cubit<RegistrationFormState> {
  RegistrationFormCubit() : super(const RegistrationFormState());

  void nameChanged(String name) {
    emit(state.copyWith(name: name));
  }

  void emailChanged(String email) {
    emit(state.copyWith(email: email));
  }

  void mobileNumberChanged(String mobileNumber) {
    emit(state.copyWith(mobileNumber: mobileNumber));
  }

  void passwordChanged(String password) {
    emit(state.copyWith(password: password));
  }
}
