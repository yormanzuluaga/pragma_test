// ignore_for_file: public_member_api_docs, use_build_context_synchronously

import 'dart:async';

import 'package:api_helper/api_helper.dart';
import 'package:pragma_test/injection/injection_container.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'app_event.dart';
part 'app_state.dart';

/// {@template app_bloc}
/// The `AppBloc` class is a Dart class that represents the business logic
/// for the main application.
///
/// This class is responsible for handling all of the business logic for the
/// main application. This includes handling the app's state, reacting to
/// events from the UI, and performing any logic to determine what the UI
/// should display.
/// {@endtemplate}
class AppBloc extends Bloc<AppEvent, AppState> {
  /// {@macro app_bloc}
  AppBloc({
    required Env env,
  }) : super(AppState(env: env)) {
    on<SetUserData>(_setUserData);
    on<SetSelectedInte>(_setSelectedInte);
    on<OnClearSessionEvent>(_onClearSession);
    on<ChangeEnvEvent>(_onChangeEnv);
    on<ChangeVisibilityModalsEvent>(_onChangeVisibilityModals);
    on<SetSessionFamilyInteList>(_setSessionFamilyInteList);
  }

  FutureOr<void> _setUserData(SetUserData event, Emitter<AppState> emit) {
    emit(
      state.copyWith(
        token: event.token,
        userSession: event.userSession,
      ),
    );
  }

  void _setSelectedInte(SetSelectedInte event, Emitter<AppState> emit) {
    emit(
      state.copyWith(),
    );
  }

  void _setSessionFamilyInteList(SetSessionFamilyInteList event, Emitter<AppState> emit) {
    emit(
      state.copyWith(),
    );
  }

  Future<void> _onClearSession(OnClearSessionEvent event, Emitter<AppState> emit) async {
    emit(
      AppState(
        env: state.env,
        firstBiometric: false,
      ),
    );
  }

  void _onChangeEnv(ChangeEnvEvent event, Emitter<AppState> emit) {
    sl<Env>().value = event.env.value;

    emit(
      AppState(
        env: event.env,
      ),
    );
  }

  void _onChangeVisibilityModals(ChangeVisibilityModalsEvent event, Emitter<AppState> emit) {
    emit(
      state.copyWith(
        termsAndConditionsModal: event.termsAndConditionsModal,
        legalNotificationModal: event.legalNotificationModal,
      ),
    );
  }
}
