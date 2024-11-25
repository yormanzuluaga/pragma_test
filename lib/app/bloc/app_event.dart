part of 'app_bloc.dart';

/// {@template app_event}
/// The `AppEvent` class is a Dart class that represents the events
/// that can be emitted by the `AppBloc`.
/// {@endtemplate}
class AppEvent extends Equatable {
  /// {@macro app_event}
  const AppEvent();

  @override
  List<Object> get props => [];
}

/// {@template set_user_data}
/// An event that is emitted when the app data is set.
/// {@endtemplate}
class SetUserData extends AppEvent {
  /// {@macro set_user_data}
  const SetUserData({
    required this.token,
    this.userSession,
  });

  /// The user's token.
  final String token;

  /// The user's session.
  final String? userSession;

  @override
  List<Object> get props => [token, userSession ?? ''];
}

/// {@template family_menu_event}
/// An event that is emitted when the family menu is set.
/// {@endtemplate}
class FamilyMenuEvent extends AppEvent {
  @override
  List<Object> get props => [];
}

/// {@template set_selectable_inte_event}
/// An event that is emitted when the selectables Inte is set.
/// {@endtemplate}
class SetSessionFamilyInteList extends AppEvent {
  /// {@macro set_selectable_inte_event}
  const SetSessionFamilyInteList();

  @override
  List<Object> get props => [];
}

/// {@template set_selected_inte}
/// An event that is emitted when the selected user is set.
/// {@endtemplate}
class SetSelectedInte extends AppEvent {
  /// {@macro set_selected_inte}
  const SetSelectedInte();

  /// The selected user.

  @override
  List<Object> get props => [];
}

/// {@template on_clear_session_event}
/// An event that is emitted when the session is cleared.
/// {@endtemplate}
class OnClearSessionEvent extends AppEvent {
  /// {@macro on_clear_session_event}
  const OnClearSessionEvent();

  @override
  List<Object> get props => [];
}

/// Change environment event
class ChangeEnvEvent extends AppEvent {
  /// Constructor
  const ChangeEnvEvent({
    required this.env,
  });

  /// New environment
  final Env env;
  @override
  List<Object> get props => [env];
}

///Change popUp show flags
class ChangeVisibilityModalsEvent extends AppEvent {
  /// Set visibility of dashboard modals
  const ChangeVisibilityModalsEvent({
    required this.termsAndConditionsModal,
    required this.legalNotificationModal,
  });

  /// Set visibility of termsAndConditions Dashboar modal
  final bool termsAndConditionsModal;

  /// Set visibility of legalNotification Dashboar modal
  final bool legalNotificationModal;

  @override
  List<Object> get props => [termsAndConditionsModal, legalNotificationModal];
}
