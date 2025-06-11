import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dalel/core/functions/custom_toast.dart';
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
  GlobalKey<FormState> forgotpassFormKey = GlobalKey();

  Future<void> signUpWithEmailAndPassword() async {
    try {
      emit(SignUpLoadingState());
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: emailAddress!.trim(), password: password!.trim());
      await addUserProfile();
      await veriyEmail();
      emit(SignUpSuccessState());
    } on FirebaseAuthException catch (e) {
      _signUpHandleExpetion(e);
    } catch (e) {
      emit(SignUpFailureState(errMessage: e.toString()));
    }
  }

  void _signUpHandleExpetion(FirebaseAuthException e) {
    if (e.code == 'weak-password') {
      emit(
          SignUpFailureState(errMessage: 'The password provided is too weak.'));
      showToast("The password provided is too weak.");
    } else if (e.code == 'email-already-in-use') {
      emit(SignUpFailureState(
          errMessage: 'The account already exists for that email.'));
      showToast("The account already exists for that email.");
    } else if (e.code == 'invalid-email') {
      emit(SignUpFailureState(errMessage: 'The email is invaild.'));
      showToast("The email is invaild.");
    } else {
      emit(SignInFailureState(errMessage: e.code));
    }
  }

  Future<void> veriyEmail() async {
    await FirebaseAuth.instance.currentUser!.sendEmailVerification();
  }

  void updateTermsAndConditionCeckBox({required newvalue}) {
    termsAndConditionCeckBoxValue = newvalue;
    emit(TermsAndconfditionsUpdateState());
  }

  void updatePassVisibilty({required visibile}) {
    passVisibilty = visibile;
    emit(PassVisibiltyUpdateState());
  }

  Future<void> signInWithEmaiilAndPass() async {
    try {
      emit(SignInLoadingState());
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailAddress!, password: password!);
      emit(SignInSuccessState());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        emit(SignInFailureState(errMessage: 'No user found for that email.'));
        showToast("No user found for that email.");
      } else if (e.code == 'wrong-password') {
        emit(SignInFailureState(
            errMessage: 'Wrong password provided for that user.'));
        showToast("Wrong password provided for that user.");
      } else {
        emit(SignInFailureState(errMessage: "thhe email is invaled"));
        showToast("The emmail is invaild.");
      }
    } catch (e) {
      emit(SignInFailureState(errMessage: e.toString()));
    }
  }

  Future<void> resetPassWithLink() async {
    try {
      emit(ForgotPassLoadingState());
      await FirebaseAuth.instance.sendPasswordResetEmail(email: emailAddress!);
      emit(ForgotPassSuccessState());
    } on Exception catch (e) {
      emit(ForgotPassFailureState(errMessage: e.toString()));
    }
  }

  Future<void> addUserProfile() async {
    CollectionReference Users = FirebaseFirestore.instance.collection("users");
    await Users.add({
      "email": emailAddress,
      "first_name": fristName,
      "last_name": lastName
    });
  }
}
