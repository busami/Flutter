import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';

import '/auth/base_auth_user_provider.dart';

import '/flutter_flow/flutter_flow_util.dart';

import '/index.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

GlobalKey<NavigatorState> appNavigatorKey = GlobalKey<NavigatorState>();

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  BaseAuthUser? initialUser;
  BaseAuthUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(BaseAuthUser newUser) {
    final shouldUpdate =
        user?.uid == null || newUser.uid == null || user?.uid != newUser.uid;
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    // No need to update unless the user has changed.
    if (notifyOnAuthChange && shouldUpdate) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      navigatorKey: appNavigatorKey,
      errorBuilder: (context, state) =>
          appStateNotifier.loggedIn ? HomeWidget() : SplashWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) =>
              appStateNotifier.loggedIn ? HomeWidget() : SplashWidget(),
        ),
        FFRoute(
          name: HomeWidget.routeName,
          path: HomeWidget.routePath,
          builder: (context, params) => HomeWidget(),
        ),
        FFRoute(
          name: ProfileWidget.routeName,
          path: ProfileWidget.routePath,
          builder: (context, params) => ProfileWidget(),
        ),
        FFRoute(
          name: ProfileEditWidget.routeName,
          path: ProfileEditWidget.routePath,
          builder: (context, params) => ProfileEditWidget(),
        ),
        FFRoute(
          name: HelpCenterWidget.routeName,
          path: HelpCenterWidget.routePath,
          builder: (context, params) => HelpCenterWidget(),
        ),
        FFRoute(
          name: PasswordChangeWidget.routeName,
          path: PasswordChangeWidget.routePath,
          builder: (context, params) => PasswordChangeWidget(),
        ),
        FFRoute(
          name: OnboardingWidget.routeName,
          path: OnboardingWidget.routePath,
          builder: (context, params) => OnboardingWidget(),
        ),
        FFRoute(
          name: LanguagesWidget.routeName,
          path: LanguagesWidget.routePath,
          builder: (context, params) => LanguagesWidget(),
        ),
        FFRoute(
          name: SignInMobileWidget.routeName,
          path: SignInMobileWidget.routePath,
          builder: (context, params) => SignInMobileWidget(),
        ),
        FFRoute(
          name: VerifyCodeWidget.routeName,
          path: VerifyCodeWidget.routePath,
          builder: (context, params) => VerifyCodeWidget(),
        ),
        FFRoute(
          name: SignInSignUpWidget.routeName,
          path: SignInSignUpWidget.routePath,
          builder: (context, params) => SignInSignUpWidget(),
        ),
        FFRoute(
          name: WelcomeWidget.routeName,
          path: WelcomeWidget.routePath,
          builder: (context, params) => WelcomeWidget(),
        ),
        FFRoute(
          name: ChatWidget.routeName,
          path: ChatWidget.routePath,
          builder: (context, params) => ChatWidget(),
        ),
        FFRoute(
          name: InviteFriendsWidget.routeName,
          path: InviteFriendsWidget.routePath,
          builder: (context, params) => InviteFriendsWidget(),
        ),
        FFRoute(
          name: SupportHomeWidget.routeName,
          path: SupportHomeWidget.routePath,
          builder: (context, params) => SupportHomeWidget(),
        ),
        FFRoute(
          name: PasswordResetWidget.routeName,
          path: PasswordResetWidget.routePath,
          builder: (context, params) => PasswordResetWidget(),
        ),
        FFRoute(
          name: PrivacyPolicyWidget.routeName,
          path: PrivacyPolicyWidget.routePath,
          builder: (context, params) => PrivacyPolicyWidget(),
        ),
        FFRoute(
          name: TermsConditionsWidget.routeName,
          path: TermsConditionsWidget.routePath,
          builder: (context, params) => TermsConditionsWidget(),
        ),
        FFRoute(
          name: AccountPrivacyWidget.routeName,
          path: AccountPrivacyWidget.routePath,
          builder: (context, params) => AccountPrivacyWidget(),
        ),
        FFRoute(
          name: AccountDeleteCnfWidget.routeName,
          path: AccountDeleteCnfWidget.routePath,
          builder: (context, params) => AccountDeleteCnfWidget(
            reason: params.getParam(
              'reason',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: AccountDeleteWidget.routeName,
          path: AccountDeleteWidget.routePath,
          builder: (context, params) => AccountDeleteWidget(),
        ),
        FFRoute(
          name: NotificationSettingWidget.routeName,
          path: NotificationSettingWidget.routePath,
          builder: (context, params) => NotificationSettingWidget(),
        ),
        FFRoute(
          name: ReferralWidget.routeName,
          path: ReferralWidget.routePath,
          builder: (context, params) => ReferralWidget(),
        ),
        FFRoute(
          name: SupportCallRequestWidget.routeName,
          path: SupportCallRequestWidget.routePath,
          builder: (context, params) => SupportCallRequestWidget(),
        ),
        FFRoute(
          name: TicketsWidget.routeName,
          path: TicketsWidget.routePath,
          builder: (context, params) => TicketsWidget(),
        ),
        FFRoute(
          name: SplashWidget.routeName,
          path: SplashWidget.routePath,
          builder: (context, params) => SplashWidget(),
        ),
        FFRoute(
          name: TicketDetailsWidget.routeName,
          path: TicketDetailsWidget.routePath,
          builder: (context, params) => TicketDetailsWidget(),
        ),
        FFRoute(
          name: SecurityWidget.routeName,
          path: SecurityWidget.routePath,
          builder: (context, params) => SecurityWidget(),
        ),
        FFRoute(
          name: AboutUsWidget.routeName,
          path: AboutUsWidget.routePath,
          builder: (context, params) => AboutUsWidget(),
        ),
        FFRoute(
          name: PasswordResetEmailSentWidget.routeName,
          path: PasswordResetEmailSentWidget.routePath,
          builder: (context, params) => PasswordResetEmailSentWidget(),
        ),
        FFRoute(
          name: FeedbackWidget.routeName,
          path: FeedbackWidget.routePath,
          builder: (context, params) => FeedbackWidget(),
        ),
        FFRoute(
          name: PasswordCreationSuccessfulWidget.routeName,
          path: PasswordCreationSuccessfulWidget.routePath,
          builder: (context, params) => PasswordCreationSuccessfulWidget(),
        ),
        FFRoute(
          name: TroubleshootingWidget.routeName,
          path: TroubleshootingWidget.routePath,
          builder: (context, params) => TroubleshootingWidget(),
        ),
        FFRoute(
          name: ExploreWidget.routeName,
          path: ExploreWidget.routePath,
          builder: (context, params) => ExploreWidget(),
        ),
        FFRoute(
          name: PaymentMethodsWidget.routeName,
          path: PaymentMethodsWidget.routePath,
          builder: (context, params) => PaymentMethodsWidget(),
        ),
        FFRoute(
          name: SearchContactsWidget.routeName,
          path: SearchContactsWidget.routePath,
          builder: (context, params) => SearchContactsWidget(),
        ),
        FFRoute(
          name: PasswordResetOTPWidget.routeName,
          path: PasswordResetOTPWidget.routePath,
          builder: (context, params) => PasswordResetOTPWidget(),
        ),
        FFRoute(
          name: AboutTheAppWidget.routeName,
          path: AboutTheAppWidget.routePath,
          builder: (context, params) => AboutTheAppWidget(),
        ),
        FFRoute(
          name: ViewAllWidget.routeName,
          path: ViewAllWidget.routePath,
          builder: (context, params) => ViewAllWidget(),
        ),
        FFRoute(
          name: ListingsWidget.routeName,
          path: ListingsWidget.routePath,
          builder: (context, params) => ListingsWidget(),
        ),
        FFRoute(
          name: PropertyDetailsWidget.routeName,
          path: PropertyDetailsWidget.routePath,
          builder: (context, params) => PropertyDetailsWidget(
            image: params.getParam(
              'image',
              ParamType.String,
            ),
            title: params.getParam(
              'title',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: AllReviewsWidget.routeName,
          path: AllReviewsWidget.routePath,
          builder: (context, params) => AllReviewsWidget(
            image: params.getParam(
              'image',
              ParamType.String,
            ),
            title: params.getParam(
              'title',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: MapViewWidget.routeName,
          path: MapViewWidget.routePath,
          builder: (context, params) => MapViewWidget(),
        ),
        FFRoute(
          name: WriteaReviewWidget.routeName,
          path: WriteaReviewWidget.routePath,
          builder: (context, params) => WriteaReviewWidget(
            image: params.getParam(
              'image',
              ParamType.String,
            ),
            title: params.getParam(
              'title',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: ViewPropertyImageWidget.routeName,
          path: ViewPropertyImageWidget.routePath,
          builder: (context, params) => ViewPropertyImageWidget(
            image: params.getParam(
              'image',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: AudioCallWidget.routeName,
          path: AudioCallWidget.routePath,
          builder: (context, params) => AudioCallWidget(
            image: params.getParam(
              'image',
              ParamType.String,
            ),
            name: params.getParam(
              'name',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: VideoCallWidget.routeName,
          path: VideoCallWidget.routePath,
          builder: (context, params) => VideoCallWidget(
            image: params.getParam(
              'image',
              ParamType.String,
            ),
            name: params.getParam(
              'name',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: ChatViewWidget.routeName,
          path: ChatViewWidget.routePath,
          builder: (context, params) => ChatViewWidget(
            avatar: params.getParam(
              'avatar',
              ParamType.String,
            ),
            name: params.getParam(
              'name',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: SearchBookigsWidget.routeName,
          path: SearchBookigsWidget.routePath,
          builder: (context, params) => SearchBookigsWidget(),
        ),
        FFRoute(
          name: ListingDetailsWidget.routeName,
          path: ListingDetailsWidget.routePath,
          builder: (context, params) => ListingDetailsWidget(
            image: params.getParam(
              'image',
              ParamType.String,
            ),
            title: params.getParam(
              'title',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: MyBookmarksWidget.routeName,
          path: MyBookmarksWidget.routePath,
          builder: (context, params) => MyBookmarksWidget(),
        ),
        FFRoute(
          name: NotificationWidget.routeName,
          path: NotificationWidget.routePath,
          builder: (context, params) => NotificationWidget(),
        ),
        FFRoute(
          name: LocationWidget.routeName,
          path: LocationWidget.routePath,
          builder: (context, params) => LocationWidget(),
        ),
        FFRoute(
          name: AllFiltersWidget.routeName,
          path: AllFiltersWidget.routePath,
          builder: (context, params) => AllFiltersWidget(),
        ),
        FFRoute(
          name: Home02Widget.routeName,
          path: Home02Widget.routePath,
          builder: (context, params) => Home02Widget(),
        ),
        FFRoute(
          name: SearchWidget.routeName,
          path: SearchWidget.routePath,
          builder: (context, params) => SearchWidget(),
        ),
        FFRoute(
          name: ViewAllLocationsBasedWidget.routeName,
          path: ViewAllLocationsBasedWidget.routePath,
          builder: (context, params) => ViewAllLocationsBasedWidget(
            title: params.getParam(
              'title',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: MapView2Widget.routeName,
          path: MapView2Widget.routePath,
          builder: (context, params) => MapView2Widget(),
        ),
        FFRoute(
          name: FactFeatureWidget.routeName,
          path: FactFeatureWidget.routePath,
          builder: (context, params) => FactFeatureWidget(),
        ),
        FFRoute(
          name: ConntactAgentWidget.routeName,
          path: ConntactAgentWidget.routePath,
          builder: (context, params) => ConntactAgentWidget(),
        ),
        FFRoute(
          name: RequestaTourWidget.routeName,
          path: RequestaTourWidget.routePath,
          builder: (context, params) => RequestaTourWidget(),
        ),
        FFRoute(
          name: RequestaTour02Widget.routeName,
          path: RequestaTour02Widget.routePath,
          builder: (context, params) => RequestaTour02Widget(),
        ),
        FFRoute(
          name: DeveloperPriceHistoryWidget.routeName,
          path: DeveloperPriceHistoryWidget.routePath,
          builder: (context, params) => DeveloperPriceHistoryWidget(),
        ),
        FFRoute(
          name: AddPropertyWidget.routeName,
          path: AddPropertyWidget.routePath,
          builder: (context, params) => AddPropertyWidget(),
        ),
        FFRoute(
          name: PublishedCompletedWidget.routeName,
          path: PublishedCompletedWidget.routePath,
          builder: (context, params) => PublishedCompletedWidget(
            image: params.getParam(
              'image',
              ParamType.String,
            ),
            title: params.getParam(
              'title',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: EditListingWidget.routeName,
          path: EditListingWidget.routePath,
          builder: (context, params) => EditListingWidget(),
        ),
        FFRoute(
          name: AllLocatonsWidget.routeName,
          path: AllLocatonsWidget.routePath,
          builder: (context, params) => AllLocatonsWidget(),
        ),
        FFRoute(
          name: AllDevelopersWidget.routeName,
          path: AllDevelopersWidget.routePath,
          builder: (context, params) => AllDevelopersWidget(),
        ),
        FFRoute(
          name: DeveloperDetailsWidget.routeName,
          path: DeveloperDetailsWidget.routePath,
          builder: (context, params) => DeveloperDetailsWidget(
            image: params.getParam(
              'image',
              ParamType.String,
            ),
            title: params.getParam(
              'title',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: AgentProfileWidget.routeName,
          path: AgentProfileWidget.routePath,
          builder: (context, params) => AgentProfileWidget(
            image: params.getParam(
              'image',
              ParamType.String,
            ),
            title: params.getParam(
              'title',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: AllAgentsWidget.routeName,
          path: AllAgentsWidget.routePath,
          builder: (context, params) => AllAgentsWidget(),
        ),
        FFRoute(
          name: RealtorsWidget.routeName,
          path: RealtorsWidget.routePath,
          builder: (context, params) => RealtorsWidget(),
        ),
        FFRoute(
          name: GuidanceDetailsWidget.routeName,
          path: GuidanceDetailsWidget.routePath,
          builder: (context, params) => GuidanceDetailsWidget(),
        ),
        FFRoute(
          name: AddNewCardWidget.routeName,
          path: AddNewCardWidget.routePath,
          builder: (context, params) => AddNewCardWidget(),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState => AppStateNotifier.instance;
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void clearRedirectLocation() => appState.clearRedirectLocation();
  void setRedirectLocationIfUnset(String location) =>
      appState.updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(uri.queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.allParams.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, {
    bool isList = false,
    List<String>? collectionNamePath,
    StructBuilder<T>? structBuilder,
  }) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
      collectionNamePath: collectionNamePath,
      structBuilder: structBuilder,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        redirect: (context, state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.uri.toString());
            return '/splash';
          }
          return null;
        },
        pageBuilder: (context, state) {
          fixStatusBarOniOS16AndBelow(context);
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
              ? Container(
                  color: Colors.transparent,
                  child: Image.asset(
                    'assets/images/logo.png',
                    fit: BoxFit.contain,
                  ),
                )
              : page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => TransitionInfo(hasTransition: false);
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouterState.of(context).uri.toString();
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}

extension GoRouterLocationExtension on GoRouter {
  String getCurrentLocation() {
    final RouteMatch lastMatch = routerDelegate.currentConfiguration.last;
    final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : routerDelegate.currentConfiguration;
    return matchList.uri.toString();
  }
}
