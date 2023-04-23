import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthState {}

class AuthInitialState extends AuthState {}

class AuthLoadingState extends AuthState {}

//when code is send
class AuthCodeSentState extends AuthState {}

//code verification
class AuthCodeVerifiedState extends AuthState {}

//for login
class AuthLoggedInState extends AuthState {
  final User firebaseUser;
  AuthLoggedInState(this.firebaseUser);
}

//for logout
class AuthLoggedOutState extends AuthState {}

//if any error come
class AuthErrorState extends AuthState {
  final String error;
  AuthErrorState(this.error);
}
