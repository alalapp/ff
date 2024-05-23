import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';

import '/auth/base_auth_user_provider.dart';

import '/backend/push_notifications/push_notifications_handler.dart'
    show PushNotificationsHandler;
import '/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

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
      errorBuilder: (context, state) =>
          appStateNotifier.loggedIn ? const HomePageWidget() : const CategoryPageWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) => appStateNotifier.loggedIn
              ? const HomePageWidget()
              : const CategoryPageWidget(),
        ),
        FFRoute(
          name: 'accountPage',
          path: '/accountPage',
          requireAuth: true,
          builder: (context, params) => const AccountPageWidget(),
        ),
        FFRoute(
          name: 'homePage',
          path: '/homePage',
          builder: (context, params) => const HomePageWidget(),
        ),
        FFRoute(
          name: 'sendCodeRegPage',
          path: '/sendCodeRegPage',
          builder: (context, params) => SendCodeRegPageWidget(
            regUserTel: params.getParam(
              'regUserTel',
              ParamType.String,
            ),
            regUserFio: params.getParam(
              'regUserFio',
              ParamType.String,
            ),
            regUserBd: params.getParam(
              'regUserBd',
              ParamType.String,
            ),
            regUserPass: params.getParam(
              'regUserPass',
              ParamType.String,
            ),
            regUserMail: params.getParam(
              'regUserMail',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'LoginPage',
          path: '/loginPage',
          builder: (context, params) => LoginPageWidget(
            code0: params.getParam(
              'code0',
              ParamType.bool,
            ),
          ),
        ),
        FFRoute(
          name: 'sendCodePage',
          path: '/sendCodePage',
          builder: (context, params) => SendCodePageWidget(
            userTel: params.getParam(
              'userTel',
              ParamType.String,
            ),
            userMail: params.getParam(
              'userMail',
              ParamType.String,
            ),
            userPass: params.getParam(
              'userPass',
              ParamType.String,
            ),
            userName: params.getParam(
              'userName',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'UserSalesPage',
          path: '/userSalesPage',
          requireAuth: true,
          builder: (context, params) => UserSalesPageWidget(
            card: params.getParam(
              'card',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'UserSalesInfoPage',
          path: '/userSalesInfoPage',
          requireAuth: true,
          builder: (context, params) => UserSalesInfoPageWidget(
            sDate: params.getParam(
              'sDate',
              ParamType.String,
            ),
            sSumm: params.getParam(
              'sSumm',
              ParamType.String,
            ),
            sItems: params.getParam(
              'sItems',
              ParamType.JSON,
            ),
          ),
        ),
        FFRoute(
          name: 'ActionInfoPage',
          path: '/actionInfoPage',
          requireAuth: true,
          builder: (context, params) => ActionInfoPageWidget(
            actionItem: params.getParam(
              'actionItem',
              ParamType.JSON,
            ),
          ),
        ),
        FFRoute(
          name: 'userPodpPage',
          path: '/userPodpPage',
          requireAuth: true,
          builder: (context, params) => UserPodpPageWidget(
            card: params.getParam(
              'card',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'userPromoPage',
          path: '/userPromoPage',
          requireAuth: true,
          builder: (context, params) => UserPromoPageWidget(
            card: params.getParam(
              'card',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'userEcardsPage',
          path: '/userEcardsPage',
          requireAuth: true,
          builder: (context, params) => UserEcardsPageWidget(
            card: params.getParam(
              'card',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'rasPricePage',
          path: '/rasPricePage',
          requireAuth: true,
          builder: (context, params) => const RasPricePageWidget(),
        ),
        FFRoute(
          name: 'rasPriceInfoPage',
          path: '/rasPriceInfoPage',
          requireAuth: true,
          builder: (context, params) => RasPriceInfoPageWidget(
            goodsArray: params.getParam(
              'goodsArray',
              ParamType.JSON,
            ),
          ),
        ),
        FFRoute(
          name: 'UserBonusPage',
          path: '/userBonusPage',
          requireAuth: true,
          builder: (context, params) => UserBonusPageWidget(
            card: params.getParam(
              'card',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'sendCodePageNew',
          path: '/sendCodePageNew',
          builder: (context, params) => SendCodePageNewWidget(
            userTel: params.getParam(
              'userTel',
              ParamType.String,
            ),
            userMail: params.getParam(
              'userMail',
              ParamType.String,
            ),
            userPass: params.getParam(
              'userPass',
              ParamType.String,
            ),
            userName: params.getParam(
              'userName',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'brandsPage',
          path: '/brandsPage',
          builder: (context, params) => const BrandsPageWidget(),
        ),
        FFRoute(
          name: 'categoryPage',
          path: '/categoryPage',
          builder: (context, params) => const CategoryPageWidget(),
        ),
        FFRoute(
          name: 'catalogGoodsPage',
          path: '/catalogGoodsPage',
          builder: (context, params) => CatalogGoodsPageWidget(
            parId: params.getParam(
              'parId',
              ParamType.int,
            ),
            parName: params.getParam(
              'parName',
              ParamType.String,
            ),
            from: params.getParam(
              'from',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'productPage',
          path: '/productPage',
          builder: (context, params) => ProductPageWidget(
            productId: params.getParam(
              'productId',
              ParamType.int,
            ),
            product: params.getParam(
              'product',
              ParamType.JSON,
            ),
            parId: params.getParam(
              'parId',
              ParamType.int,
            ),
            parName: params.getParam(
              'parName',
              ParamType.String,
            ),
            partype: params.getParam(
              'partype',
              ParamType.String,
            ),
            byPar: params.getParam(
              'byPar',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'brandsGoodsPage',
          path: '/brandsGoodsPage',
          builder: (context, params) => BrandsGoodsPageWidget(
            parId: params.getParam(
              'parId',
              ParamType.int,
            ),
            parName: params.getParam(
              'parName',
              ParamType.String,
            ),
            from: params.getParam(
              'from',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'NewsInfoPage',
          path: '/newsInfoPage',
          builder: (context, params) => NewsInfoPageWidget(
            newsItemArray: params.getParam(
              'newsItemArray',
              ParamType.JSON,
            ),
          ),
        ),
        FFRoute(
          name: 'DrawerPage',
          path: '/drawerPage',
          builder: (context, params) => const DrawerPageWidget(),
        ),
        FFRoute(
          name: 'searchPage',
          path: '/searchPage',
          builder: (context, params) => const SearchPageWidget(),
        ),
        FFRoute(
          name: 'basketPage',
          path: '/basketPage',
          builder: (context, params) => const BasketPageWidget(),
        ),
        FFRoute(
          name: 'propPage',
          path: '/propPage',
          builder: (context, params) => PropPageWidget(
            parID: params.getParam(
              'parID',
              ParamType.int,
            ),
            parName: params.getParam(
              'parName',
              ParamType.String,
            ),
            parType: params.getParam(
              'parType',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'orderPage',
          path: '/orderPage',
          requireAuth: true,
          builder: (context, params) => OrderPageWidget(
            orderProp: params.getParam(
              'orderProp',
              ParamType.DataStruct,
              isList: false,
              structBuilder: OrderPropertiesStruct.fromSerializableMap,
            ),
          ),
        ),
        FFRoute(
          name: 'orderUserInfoPage',
          path: '/orderUserInfoPage',
          requireAuth: true,
          builder: (context, params) => const OrderUserInfoPageWidget(),
        ),
        FFRoute(
          name: 'orderDeliveryPage',
          path: '/orderDeliveryPage',
          requireAuth: true,
          builder: (context, params) => const OrderDeliveryPageWidget(),
        ),
        FFRoute(
          name: 'orderPaymentPage',
          path: '/orderPaymentPage',
          requireAuth: true,
          builder: (context, params) => const OrderPaymentPageWidget(),
        ),
        FFRoute(
          name: 'orderDeliverySetPVZ',
          path: '/orderDeliverySetPVZ',
          builder: (context, params) => const OrderDeliverySetPVZWidget(),
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
            return '/categoryPage';
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
                  color: FlutterFlowTheme.of(context).primary,
                  child: Image.asset(
                    'assets/images/ImageToStl.com_logotype.png',
                    fit: BoxFit.contain,
                  ),
                )
              : PushNotificationsHandler(child: page);

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

  static TransitionInfo appDefault() => const TransitionInfo(hasTransition: false);
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
