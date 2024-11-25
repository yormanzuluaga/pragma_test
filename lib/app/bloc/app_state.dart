// ignore_for_file: public_member_api_docs

part of 'app_bloc.dart';

class AppState extends Equatable {
  const AppState({
    this.token,
    this.env,
    this.userSession,
    this.firstBiometric = true,
    this.termsAndConditionsModal = false,
    this.legalNotificationModal = false,
    this.mustShowQualtrics,
  });

  final String? token;
  final Env? env;
  final String? userSession;
  final bool termsAndConditionsModal;
  final bool legalNotificationModal;
  final bool firstBiometric;
  final bool? mustShowQualtrics;

  @override
  List<Object?> get props => [
        token,
        env,
        userSession,
        firstBiometric,
        termsAndConditionsModal,
        legalNotificationModal,
        mustShowQualtrics,
      ];

  AppState copyWith({
    String? token,
    Env? env,
    String? userSession,
    bool? firstBiometric,
    bool? termsAndConditionsModal,
    bool? legalNotificationModal,
    bool? mustShowQualtrics,
  }) {
    return AppState(
      token: token ?? this.token,
      env: env ?? this.env,
      userSession: userSession ?? this.userSession,
      firstBiometric: firstBiometric ?? this.firstBiometric,
      termsAndConditionsModal:
          termsAndConditionsModal ?? this.termsAndConditionsModal,
      legalNotificationModal:
          legalNotificationModal ?? this.legalNotificationModal,
      mustShowQualtrics: mustShowQualtrics ?? this.mustShowQualtrics,
    );
  }

  Map<String, String> createHeaders() {
    return {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $token',
    };
  }
}
