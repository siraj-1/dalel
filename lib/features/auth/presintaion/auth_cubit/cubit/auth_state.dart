class AuthState {}

final class AuthInitial extends AuthState {}

final class SignUpLoadingState extends AuthState {}

final class SignUpSuccessState extends AuthState {}

final class SignUpFailureState extends AuthState {
  final String errMessage;

  SignUpFailureState({required this.errMessage});
}

final class SignInLoadingState extends AuthState {}

final class SignInSuccessState extends AuthState {}

final class SignInFailureState extends AuthState {
  final String errMessage;

  SignInFailureState({required this.errMessage});
}

final class ForgotPassLoadingState extends AuthState {}

final class ForgotPassSuccessState extends AuthState {}

final class ForgotPassFailureState extends AuthState {
  final String errMessage;

  ForgotPassFailureState({required this.errMessage});
}

final class TermsAndconfditionsUpdateState extends AuthState {}

final class PassVisibiltyUpdateState extends AuthState {}
