part of 'login_bloc.dart';

@immutable
class LoginState {
  RequestStatus? status;
  Failures? failures;
  LoginModel? model;

  LoginState({this.model, this.failures, this.status});

  LoginState copyWith(
      {RequestStatus? status, Failures? failures, LoginModel? model}) {
    return LoginState(
      status: status ?? this.status,
      failures: failures ?? this.failures,
      model: model ?? this.model,
    );
  }
}

class LoginInitState extends LoginState {
  LoginInitState() : super(status: RequestStatus.init);
}
