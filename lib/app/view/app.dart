import 'package:pragma_test/app/routes/router_config.dart';
import 'package:pragma_test/app/bloc/app_bloc.dart';
import 'package:pragma_test/app/routes/routes.dart';
import 'package:pragma_test/feature/auth/bloc/auth_bloc.dart';
import 'package:pragma_test/feature/home/bloc/breeds_bloc.dart';
import 'package:pragma_test/injection/injection_container.dart' as injection;
import 'package:pragma_test/l10n/l10n.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pragma_ui/pragma_ui.dart';

/// {@template app}
/// The `App` class is a Dart class that represents the main application
/// and sets up the theme, localization, and routing.
/// {@endtemplate}
class App extends StatelessWidget {
  /// {@macro app}
  const App({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final router = CustomRouterConfig().router;

    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => injection.sl<AppBloc>(),
        ),
        BlocProvider(
          create: (_) => injection.sl<AuthBloc>(),
        ),
        BlocProvider(
          create: (_) => injection.sl<BreedsBloc>(),
        ),
      ],
      child: Builder(
        builder: (context) {
          return kIsWeb
              ? FutureBuilder(
                  future: _loadUserData(context),
                  builder: (context, snap) {
                    if (snap.connectionState == ConnectionState.waiting) {
                      return const Material(
                        child: Center(
                          child: CircularProgressIndicator(color: Colors.red),
                        ),
                      );
                    }

                    return MaterialApp.router(
                      theme: const AppTheme().themeData,
                      title: 'front',
                      localizationsDelegates: AppLocalizations.localizationsDelegates,
                      supportedLocales: AppLocalizations.supportedLocales,
                      routeInformationProvider: router.routeInformationProvider,
                      routeInformationParser: router.routeInformationParser,
                      routerDelegate: router.routerDelegate,
                      scaffoldMessengerKey: rootScaffoldMessengerKey,
                    );
                  },
                )
              : MediaQuery(
                  data: MediaQuery.of(context)
                      .copyWith(textScaler: MediaQuery.of(context).textScaler.clamp(minScaleFactor: 0.75, maxScaleFactor: 1.25)),
                  child: MaterialApp.router(
                    theme: const AppTheme().themeData,
                    title: 'front',
                    localizationsDelegates: AppLocalizations.localizationsDelegates,
                    supportedLocales: AppLocalizations.supportedLocales,
                    routeInformationProvider: router.routeInformationProvider,
                    routeInformationParser: router.routeInformationParser,
                    routerDelegate: router.routerDelegate,
                    scaffoldMessengerKey: rootScaffoldMessengerKey,
                  ),
                );
        },
      ),
    );
  }

  Future<void> _loadUserData(BuildContext context) async {
    final appBloc = context.read<AppBloc>();

    if (appBloc.state.token == null || (appBloc.state.token?.isNotEmpty ?? false)) {
      // final token = await injection.sl<UserStorage>().fetchToken();
      // final inte = await injection.sl<UserStorage>().fetchInte();
      // final familyGroup = await injection.sl<UserStorage>().fetchFamilyGroup();
      // final userSession = await injection.sl<UserStorage>().fetchUserSession();
      // final appState = AppState(
      //   token: token,
      //   selectedInte: inte,
      //   familyGroup: familyGroup,
      // );

      // if (familyGroup != null &&
      //     inte != null &&
      //     token != null &&
      //     token.isNotEmpty &&
      //     userSession != null &&
      //     userSession.isNotEmpty) {
      //   appBloc
      //     ..add(
      //       SetUserData(
      //         token: token,
      //         selectedInte: inte,
      //         familyGroup: familyGroup,
      //         userSession: userSession,
      //       ),
      //     )
      //     ..add(
      //       SetSessionFamilyInteList(
      //         familyGroup: familyGroup,
      //         loggedInte: inte,
      //       ),
      //     );

      //   final userRepository = injection.sl<UserRepository>();
      //   final menuResponse = await userRepository.getMenu(
      //     headers: appState.createHeaders(),
      //     prepaga: (appState.selectedInte?.prepaga ?? '').toString(),
      //   );
      //   final menuList =
      //       menuResponse.isRight ? menuResponse.right : <MenuResponse>[];
      //   final showTermsAndConditionsModal = menuList
      //       .any((element) => element.id == 501 && element.habilitado! == true);
      //   final showLegalNotificationsModal = menuList
      //       .any((element) => element.id == 502 && element.habilitado! == true);

      //   appBloc.add(
      //     ChangeVisibilityModalsEvent(
      //       termsAndConditionsModal: showTermsAndConditionsModal,
      //       legalNotificationModal: showLegalNotificationsModal,
      //     ),
      //   );

      //   if (context.mounted) {
      //     context.read<NavBarBloc>().add(SetMenuListEvent(menu: menuList));
      //   }
      // }
    }
  }
}
