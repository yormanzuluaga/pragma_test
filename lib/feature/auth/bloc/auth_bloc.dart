import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pragma_test/app/bloc/app_bloc.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(const AuthState()) {
    on<AuthEvent>((event, emit) {});

    on<AuthIndexEvent>(
      (event, emit) => emit(
        state.copyWith(
          authIndex: event.authIndex,
        ),
      ),
    );
    on<IndexEvent>(
      (event, emit) => emit(
        state.copyWith(
          index: event.index,
        ),
      ),
    );
    on<SignUpEvent>(_signUpEvent);
    on<LogOutEvent>((event, emit) async {});

    on<UserNameEvent>((event, emit) async {});
  }

  ///Login method
  Future<void> login(
    BuildContext contextLogin, {
    required String email,
    required String password,
    required Future<void> Function(AppState) onSuccess,
  }) async {}

  Future<void> _signUpEvent(SignUpEvent event, Emitter<AuthState> emit) async {}
}
