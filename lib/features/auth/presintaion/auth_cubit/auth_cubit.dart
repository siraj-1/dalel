import 'package:dalel/features/auth/presintaion/auth_cubit/cubit/auth_state.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());
  String? fristName;
  String? lastName;
  String? emailAddress;
  String? password;
  bool? termsAndConditionCeckBoxValue = false;
  bool? passVisibilty;
  GlobalKey<FormState> signupFormKey = GlobalKey();
  GlobalKey<FormState> signinFormKey = GlobalKey();

  signUpWithEmailAndPassword() async {
    try {
      emit(SignUpLoadingState());
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: emailAddress!.trim(), password: password!.trim());
      emit(SignUpSuccessState());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        emit(SignUpFailureState(
            errMessage: 'The password provided is too weak.'));
      } else if (e.code == 'email-already-in-use') {
        emit(SignUpFailureState(
            errMessage: 'The account already exists for that email.'));
      }
    } catch (e) {
      emit(SignUpFailureState(errMessage: e.toString()));
    }
  }

  updateTermsAndConditionCeckBox({required newvalue}) {
    termsAndConditionCeckBoxValue = newvalue;
    emit(TermsAndconfditionsUpdateState());
  }

  updatePassVisibilty({required visibile}) {
    passVisibilty = visibile;
    emit(PassVisibiltyUpdateState());
  }

  signInWithEmaiilAndPass() async {
    try {
      emit(SignInLoadingState()); // Use SignInLoadingState if you have one
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailAddress!.trim(),
        password: password!.trim(),
      );
      emit(SignInSuccessState());
    } on FirebaseAuthException catch (e) {
      String errorMessage;
      if (e.code == 'user-not-found') {
        errorMessage = 'No account found with this email.';
      } else if (e.code == 'wrong-password') {
        errorMessage = 'Incorrect password. Please try again.';
      } else if (e.code == 'invalid-email') {
        errorMessage = 'Invalid email address.';
      } else {
        errorMessage = e.message ?? 'Something went wrong.';
      }

      emit(SignInFailureState(errMessage: errorMessage));
    } catch (e) {
      emit(SignInFailureState(errMessage: 'Unexpected error: $e'));
    }
  }
}
