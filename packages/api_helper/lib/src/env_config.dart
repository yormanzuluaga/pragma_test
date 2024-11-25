enum Environments {
  ///Production environment.
  prod('Prod'),

  ///Pre production environment.
  pre('Pre'),

  ///QA environment.
  qa('QA'),

  ///Integration environment.
  inte('Inte');

  const Environments(this.string);

  ///value of the specific [Environments].
  final String string;

  ///Factory of the specific [Environments].
  factory Environments.fromValue(String value) {
    return values.firstWhere(
      (e) => e.string == value,
      orElse: () => values.first,
    );
  }
}

class Env {
  Env({
    required this.value,
  });

  Environments value;

  ///BaseURl var for the specific [Env].
  String get baseURL {
    final values = const String.fromEnvironment('BASE_URL', defaultValue: 'localhost').split(',');
    if (values.length > 1) {
      switch (this.value) {
        case Environments.prod:
          return values[0];
        case Environments.pre:
          return values[1];
        case Environments.qa:
          return values[2];
        case Environments.inte:
          return values[3];
      }
    }

    return const String.fromEnvironment('BASE_URL', defaultValue: 'localhost');
  }

  ///APIKey var for the specific [Env].
  String get apiKey {
    final values = const String.fromEnvironment('API_KEY').split(',');
    if (values.length > 1) {
      switch (this.value) {
        case Environments.prod:
          return values[0];
        case Environments.pre:
          return values[1];
        case Environments.qa:
          return values[2];
        case Environments.inte:
          return values[3];
      }
    }
    return const String.fromEnvironment('API_KEY');
  }

  /// Register Url var for the specific [Env].
  String get registerUrl {
    final values = const String.fromEnvironment('REGISTER_URL').split(',');
    if (values.length > 1) {
      switch (this.value) {
        case Environments.prod:
          return values[0];
        case Environments.pre:
          return values[1];
        case Environments.qa:
          return values[2];
        case Environments.inte:
          return values[3];
      }
    }
    return const String.fromEnvironment('REGISTER_URL');
  }

  /// Recover password url var for the specific [Env].
  String get recoverPassword {
    final values = const String.fromEnvironment('RECOVER_PASSWORD_URL').split(',');
    if (values.length > 1) {
      switch (this.value) {
        case Environments.prod:
          return values[0];
        case Environments.pre:
          return values[1];
        case Environments.qa:
          return values[2];
        case Environments.inte:
          return values[3];
      }
    }
    return const String.fromEnvironment('RECOVER_PASSWORD_URL');
  }

  /// Web Base url var for the specific [Env].
  String get webBaseURl {
    final values = const String.fromEnvironment('WEB_BASE_URL').split(',');
    if (values.length > 1) {
      switch (this.value) {
        case Environments.prod:
          return values[0];
        case Environments.pre:
          return values[1];
        case Environments.qa:
          return values[2];
        case Environments.inte:
          return values[3];
      }
    }
    return const String.fromEnvironment('WEB_BASE_URL');
  }

  /// DeepLink host var for the specific [Env].
  String get deepLinkUrl {
    final values = const String.fromEnvironment('DEEPLINK_MOBILE').split(',');
    if (values.length > 1) {
      switch (this.value) {
        case Environments.prod:
          return values[0];
        case Environments.pre:
          return values[1];
        case Environments.qa:
          return values[2];
        case Environments.inte:
          return values[3];
      }
    }
    return const String.fromEnvironment('DEEPLINK_MOBILE');
  }

  /// Documents host var for the specific [Env].
  String get documentsUrl {
    final values = const String.fromEnvironment('DOCUMENTS_URL').split(',');
    if (values.length > 1) {
      switch (this.value) {
        case Environments.prod:
          return values[0];
        case Environments.pre:
          return values[1];
        case Environments.qa:
          return values[2];
        case Environments.inte:
          return values[3];
      }
    }
    return const String.fromEnvironment('DOCUMENTS_URL');
  }

  @override
  String toString() {
    return 'Env: $value';
  }
}
