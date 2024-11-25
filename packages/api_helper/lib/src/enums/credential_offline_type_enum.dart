import 'package:flutter/material.dart';
import 'package:pragma_ui/pragma_ui.dart';

/// {@template credential_offline_type}
/// Credential Offline Type.
/// {@endtemplate}
enum CredentialOfflineType {
  /// Black
  black,

  /// Grupo Salud
  grupoSalud,

  /// Mercado Libre
  mercadolibre,

  /// Regular
  regular;

  /// Method to get color
  Color getColor() {
    switch (this) {
      case CredentialOfflineType.black:
        return AppColors.black;
      case CredentialOfflineType.grupoSalud:
        return AppColors.white;
      case CredentialOfflineType.mercadolibre:
        return AppColors.white;
      case CredentialOfflineType.regular:
        return AppColors.white;
    }
  }

  /// Method to get icon name
  String getIconName() {
    switch (this) {
      case CredentialOfflineType.black:
        return 'lib/assets/images/logo_black_credential.png';
      case CredentialOfflineType.grupoSalud:
        return 'lib/assets/images/grupo_salud_logo.png';
      case CredentialOfflineType.mercadolibre:
        return 'lib/assets/images/logo_mercado_libre.png';
      case CredentialOfflineType.regular:
        return 'lib/assets/images/swiss_logo_color_052024.png';
    }
  }

  /// Method to get icon height
  double getIconHeight() {
    switch (this) {
      case CredentialOfflineType.black:
        return 44;
      case CredentialOfflineType.grupoSalud:
        return 32;
      case CredentialOfflineType.mercadolibre:
        return 36;
      case CredentialOfflineType.regular:
        return 44;
    }
  }

  /// Method to get font color
  Color getFontColordescriptionUser() {
    switch (this) {
      case CredentialOfflineType.black:
        return AppColors.white;
      case CredentialOfflineType.grupoSalud:
        return AppColors.black;
      case CredentialOfflineType.mercadolibre:
        return AppColors.black;
      case CredentialOfflineType.regular:
        return AppColors.black;
    }
  }

  /// Method to get font color
  Color getFontColorTokenUser() {
    switch (this) {
      case CredentialOfflineType.black:
        return AppColors.grey5;
      case CredentialOfflineType.grupoSalud:
        return AppColors.grey2;
      case CredentialOfflineType.mercadolibre:
        return AppColors.grey2;
      case CredentialOfflineType.regular:
        return AppColors.grey2;
    }
  }
}
