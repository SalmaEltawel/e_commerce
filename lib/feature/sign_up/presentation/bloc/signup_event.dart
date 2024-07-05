part of 'signup_bloc.dart';

@immutable
abstract class SignupEvent {}

class SignupButtonEvent extends SignupEvent {
  SignUpRequest request;

  SignupButtonEvent(
      {required this.request});
}
