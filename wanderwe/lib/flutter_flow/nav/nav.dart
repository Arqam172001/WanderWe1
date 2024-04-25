import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '/backend/backend.dart';

import '/auth/base_auth_user_provider.dart';

import '/index.dart';
import '/main.dart';
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
          appStateNotifier.loggedIn ? const NavBarPage() : const UserTypeWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) =>
              appStateNotifier.loggedIn ? const NavBarPage() : const UserTypeWidget(),
        ),
        FFRoute(
          name: 'splash2',
          path: '/splash2',
          builder: (context, params) => const Splash2Widget(),
        ),
        FFRoute(
          name: 'Login',
          path: '/login',
          builder: (context, params) => const LoginWidget(),
        ),
        FFRoute(
          name: 'Splash1',
          path: '/splash1',
          builder: (context, params) => const Splash1Widget(),
        ),
        FFRoute(
          name: 'createAccountUser',
          path: '/createAccountUser',
          builder: (context, params) => const CreateAccountUserWidget(),
        ),
        FFRoute(
          name: 'createAccountHotelOwner',
          path: '/createAccountHotelOwner',
          builder: (context, params) => const CreateAccountHotelOwnerWidget(),
        ),
        FFRoute(
          name: 'userType',
          path: '/userType',
          builder: (context, params) => const UserTypeWidget(),
        ),
        FFRoute(
          name: 'createAccountJeepOwner',
          path: '/createAccountJeepOwner',
          builder: (context, params) => const CreateAccountJeepOwnerWidget(),
        ),
        FFRoute(
          name: 'registerAccountType',
          path: '/registerAccountType',
          builder: (context, params) => const RegisterAccountTypeWidget(),
        ),
        FFRoute(
          name: 'settings',
          path: '/settings',
          builder: (context, params) => params.isEmpty
              ? const NavBarPage(initialPage: 'settings')
              : const SettingsWidget(),
        ),
        FFRoute(
          name: 'Place',
          path: '/place',
          asyncParams: {
            'docrecievedloc':
                getDoc(['LocationsList'], LocationsListRecord.fromSnapshot),
          },
          builder: (context, params) => PlaceWidget(
            docrecievedloc:
                params.getParam('docrecievedloc', ParamType.Document),
          ),
        ),
        FFRoute(
          name: 'hotels',
          path: '/hotels',
          builder: (context, params) => params.isEmpty
              ? const NavBarPage(initialPage: 'hotels')
              : const HotelsWidget(),
        ),
        FFRoute(
          name: 'hotel_booking',
          path: '/hotelBooking',
          asyncParams: {
            'hotelnuserrecieved':
                getDoc(['User', 'Hotel'], HotelRecord.fromSnapshot),
          },
          builder: (context, params) => HotelBookingWidget(
            hotelnuserrecieved:
                params.getParam('hotelnuserrecieved', ParamType.Document),
          ),
        ),
        FFRoute(
          name: 'Googlemap',
          path: '/googlemap',
          asyncParams: {
            'locationrecieveddoc':
                getDoc(['LocationsList'], LocationsListRecord.fromSnapshot),
          },
          builder: (context, params) => GooglemapWidget(
            locationrecieveddoc:
                params.getParam('locationrecieveddoc', ParamType.Document),
          ),
        ),
        FFRoute(
          name: 'adminProfile',
          path: '/adminProfile',
          builder: (context, params) => const AdminProfileWidget(),
        ),
        FFRoute(
          name: 'adminHome',
          path: '/adminHome',
          builder: (context, params) => const AdminHomeWidget(),
        ),
        FFRoute(
          name: 'authentication',
          path: '/authentication',
          builder: (context, params) => const AuthenticationWidget(),
        ),
        FFRoute(
          name: 'profileHotel',
          path: '/profileHotel',
          asyncParams: {
            'hotel': getDoc(['User'], UserRecord.fromSnapshot),
          },
          builder: (context, params) => ProfileHotelWidget(
            hotel: params.getParam('hotel', ParamType.Document),
          ),
        ),
        FFRoute(
          name: 'profileUser',
          path: '/profileUser',
          asyncParams: {
            'userPara': getDoc(['User'], UserRecord.fromSnapshot),
          },
          builder: (context, params) => ProfileUserWidget(
            userPara: params.getParam('userPara', ParamType.Document),
          ),
        ),
        FFRoute(
          name: 'profileJeep',
          path: '/profileJeep',
          asyncParams: {
            'jeepPara': getDoc(['User'], UserRecord.fromSnapshot),
          },
          builder: (context, params) => ProfileJeepWidget(
            jeepPara: params.getParam('jeepPara', ParamType.Document),
          ),
        ),
        FFRoute(
          name: 'manageDestinations',
          path: '/manageDestinations',
          builder: (context, params) => const ManageDestinationsWidget(),
        ),
        FFRoute(
          name: 'manageTourists',
          path: '/manageTourists',
          builder: (context, params) => const ManageTouristsWidget(),
        ),
        FFRoute(
          name: 'destinationUpdate',
          path: '/destinationUpdate',
          builder: (context, params) => DestinationUpdateWidget(
            desRef: params.getParam(
                'desRef', ParamType.DocumentReference, false, ['Destination']),
          ),
        ),
        FFRoute(
          name: 'addCuisine',
          path: '/addCuisine',
          asyncParams: {
            'cuisinePara':
                getDoc(['Destination', 'Cuisine'], CuisineRecord.fromSnapshot),
          },
          builder: (context, params) => AddCuisineWidget(
            cuisinePara: params.getParam('cuisinePara', ParamType.Document),
            destinationPara: params.getParam('destinationPara',
                ParamType.DocumentReference, false, ['Destination']),
          ),
        ),
        FFRoute(
          name: 'manageHotelOwners',
          path: '/manageHotelOwners',
          builder: (context, params) => const ManageHotelOwnersWidget(),
        ),
        FFRoute(
          name: 'manageJeepOwners',
          path: '/manageJeepOwners',
          builder: (context, params) => const ManageJeepOwnersWidget(),
        ),
        FFRoute(
          name: 'review',
          path: '/review',
          builder: (context, params) => const ReviewWidget(),
        ),
        FFRoute(
          name: 'loginAdmin',
          path: '/loginAdmin',
          builder: (context, params) => const LoginAdminWidget(),
        ),
        FFRoute(
          name: 'ManageBudgetTool',
          path: '/manageBudgetTool',
          builder: (context, params) => const ManageBudgetToolWidget(),
        ),
        FFRoute(
          name: 'budgetUpdate',
          path: '/budgetUpdate',
          asyncParams: {
            'budgetRef':
                getDoc(['Admin', 'BudgetTool'], BudgetToolRecord.fromSnapshot),
          },
          builder: (context, params) => BudgetUpdateWidget(
            budgetRef: params.getParam('budgetRef', ParamType.Document),
          ),
        ),
        FFRoute(
          name: 'hotelOwnerSettings',
          path: '/hotelOwnerSettings',
          builder: (context, params) => const HotelOwnerSettingsWidget(),
        ),
        FFRoute(
          name: 'jeepOwnerSettings',
          path: '/jeepOwnerSettings',
          builder: (context, params) => const JeepOwnerSettingsWidget(),
        ),
        FFRoute(
          name: 'jeepOwnerHome',
          path: '/jeepOwnerHome',
          builder: (context, params) => const JeepOwnerHomeWidget(),
        ),
        FFRoute(
          name: 'approval',
          path: '/approval',
          builder: (context, params) => const ApprovalWidget(),
        ),
        FFRoute(
          name: 'hotelOwnerHome',
          path: '/hotelOwnerHome',
          builder: (context, params) => const HotelOwnerHomeWidget(),
        ),
        FFRoute(
          name: 'JeepOwnerChats',
          path: '/JeepOwnerChats',
          builder: (context, params) => const JeepOwnerChatsWidget(),
        ),
        FFRoute(
          name: 'HotelOwnerChat',
          path: '/HotelOwnerChat',
          builder: (context, params) => const HotelOwnerChatWidget(),
        ),
        FFRoute(
          name: 'JeepReview',
          path: '/JeepReview',
          builder: (context, params) => const JeepReviewWidget(),
        ),
        FFRoute(
          name: 'HotelReview',
          path: '/HotelReview',
          builder: (context, params) => const HotelReviewWidget(),
        ),
        FFRoute(
          name: 'manageHotels',
          path: '/manageHotels',
          builder: (context, params) => const ManageHotelsWidget(),
        ),
        FFRoute(
          name: 'manageJeeps',
          path: '/manageJeeps',
          builder: (context, params) => const ManageJeepsWidget(),
        ),
        FFRoute(
          name: 'RoutePlan',
          path: '/routePlan',
          builder: (context, params) => const RoutePlanWidget(),
        ),
        FFRoute(
          name: 'jeepBookings',
          path: '/jeepBookings',
          builder: (context, params) => const JeepBookingsWidget(),
        ),
        FFRoute(
          name: 'jeepBookingDetails',
          path: '/jeepBookingDetails',
          asyncParams: {
            'bookingPar': getDoc(['booking'], BookingRecord.fromSnapshot),
          },
          builder: (context, params) => JeepBookingDetailsWidget(
            bookingPar: params.getParam('bookingPar', ParamType.Document),
          ),
        ),
        FFRoute(
          name: 'updateJeep',
          path: '/updateJeep',
          asyncParams: {
            'jeepPara': getDoc(['User', 'Jeep'], JeepRecord.fromSnapshot),
          },
          builder: (context, params) => UpdateJeepWidget(
            jeepPara: params.getParam('jeepPara', ParamType.Document),
          ),
        ),
        FFRoute(
          name: 'budgetingTool',
          path: '/budgetingTool',
          builder: (context, params) => const BudgetingToolWidget(),
        ),
        FFRoute(
          name: 'JeepOnwerChatPanel',
          path: '/jeepOnwerChatPanel',
          builder: (context, params) => const JeepOnwerChatPanelWidget(),
        ),
        FFRoute(
          name: 'hotelOwnerChatPanel',
          path: '/hotelOwnerChatPanel',
          builder: (context, params) => const HotelOwnerChatPanelWidget(),
        ),
        FFRoute(
          name: 'userProfile',
          path: '/userProfile',
          builder: (context, params) => const UserProfileWidget(),
        ),
        FFRoute(
          name: 'notificationSettings',
          path: '/notificationSettings',
          builder: (context, params) => const NotificationSettingsWidget(),
        ),
        FFRoute(
          name: 'userLogin',
          path: '/userLogin',
          builder: (context, params) => UserLoginWidget(
            email: params.getParam('email', ParamType.bool),
          ),
        ),
        FFRoute(
          name: 'bookingDetailsHotel',
          path: '/bookingDetailsHotel',
          asyncParams: {
            'bookingPara': getDoc(['booking'], BookingRecord.fromSnapshot),
          },
          builder: (context, params) => BookingDetailsHotelWidget(
            bookingPara: params.getParam('bookingPara', ParamType.Document),
          ),
        ),
        FFRoute(
          name: 'manageRoomsHotel',
          path: '/manageRoomsHotel',
          builder: (context, params) => const ManageRoomsHotelWidget(),
        ),
        FFRoute(
          name: 'roomBookingsHotel',
          path: '/roomBookingsHotel',
          builder: (context, params) => const RoomBookingsHotelWidget(),
        ),
        FFRoute(
          name: 'forgotPassword',
          path: '/forgotPassword',
          builder: (context, params) => const ForgotPasswordWidget(),
        ),
        FFRoute(
          name: 'updateRooms',
          path: '/updateRooms',
          asyncParams: {
            'roomPara': getDoc(['Room'], RoomRecord.fromSnapshot),
          },
          builder: (context, params) => UpdateRoomsWidget(
            roomPara: params.getParam('roomPara', ParamType.Document),
          ),
        ),
        FFRoute(
          name: 'destinationAdd',
          path: '/destinationAdd',
          builder: (context, params) => const DestinationAddWidget(),
        ),
        FFRoute(
          name: 'adminMap',
          path: '/adminMap',
          builder: (context, params) => const AdminMapWidget(),
        ),
        FFRoute(
          name: 'addHotel',
          path: '/addHotel',
          builder: (context, params) => const AddHotelWidget(),
        ),
        FFRoute(
          name: 'addJeep',
          path: '/addJeep',
          builder: (context, params) => const AddJeepWidget(),
        ),
        FFRoute(
          name: 'review_test1',
          path: '/reviewTest1',
          builder: (context, params) => const ReviewTest1Widget(),
        ),
        FFRoute(
          name: 'review_test_cont',
          path: '/reviewTestCont',
          builder: (context, params) => const ReviewTestContWidget(),
        ),
        FFRoute(
          name: 'updateHotel',
          path: '/updateHotel',
          asyncParams: {
            'hotelRef': getDoc(['User', 'Hotel'], HotelRecord.fromSnapshot),
          },
          builder: (context, params) => UpdateHotelWidget(
            hotelRef: params.getParam('hotelRef', ParamType.Document),
          ),
        ),
        FFRoute(
          name: 'addRoom',
          path: '/addRoom',
          asyncParams: {
            'hotelRef': getDoc(['User', 'Hotel'], HotelRecord.fromSnapshot),
          },
          builder: (context, params) => AddRoomWidget(
            hotelRef: params.getParam('hotelRef', ParamType.Document),
          ),
        ),
        FFRoute(
          name: 'TravellersMainPage',
          path: '/travellersMainPage',
          builder: (context, params) => const TravellersMainPageWidget(),
        ),
        FFRoute(
          name: 'AvailableRidesList',
          path: '/AvailableRidesList',
          builder: (context, params) => params.isEmpty
              ? const NavBarPage(initialPage: 'AvailableRidesList')
              : const AvailableRidesListWidget(),
        ),
        FFRoute(
          name: 'HomePageUser',
          path: '/HomePageUser',
          builder: (context, params) => params.isEmpty
              ? const NavBarPage(initialPage: 'HomePageUser')
              : const HomePageUserWidget(),
        ),
        FFRoute(
          name: 'DestinationList',
          path: '/destinationList',
          builder: (context, params) => const DestinationListWidget(),
        ),
        FFRoute(
          name: 'TravelerProfilePage',
          path: '/travelerProfilePage',
          asyncParams: {
            'documentrecieved': getDoc(['User'], UserRecord.fromSnapshot),
          },
          builder: (context, params) => TravelerProfilePageWidget(
            documentrecieved:
                params.getParam('documentrecieved', ParamType.Document),
          ),
        ),
        FFRoute(
          name: 'TransporterProfilePageCopy',
          path: '/TravelerProfilePageCopy',
          asyncParams: {
            'riderrecieved': getDoc(['User', 'Jeep'], JeepRecord.fromSnapshot),
          },
          builder: (context, params) => TransporterProfilePageCopyWidget(
            riderrecieved: params.getParam('riderrecieved', ParamType.Document),
          ),
        ),
        FFRoute(
          name: 'addRoutePlan',
          path: '/addRoutePlan',
          builder: (context, params) => const AddRoutePlanWidget(),
        ),
        FFRoute(
          name: 'reviewpagemain',
          path: '/reviewpagemain',
          asyncParams: {
            'reviewrec': getDoc(['User', 'Hotel'], HotelRecord.fromSnapshot),
          },
          builder: (context, params) => ReviewpagemainWidget(
            reviewrec: params.getParam('reviewrec', ParamType.Document),
          ),
        ),
        FFRoute(
          name: 'bookhotelcopy',
          path: '/bookhotelcopy',
          builder: (context, params) => const BookhotelcopyWidget(),
        ),
        FFRoute(
          name: 'notificationcotravelor',
          path: '/notificationcotravelor',
          builder: (context, params) => const NotificationcotravelorWidget(),
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
    ..addAll(queryParameters)
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
      (state.extraMap.length == 1 &&
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
    ParamType type, [
    bool isList = false,
    List<String>? collectionNamePath,
  ]) {
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
    return deserializeParam<T>(param, type, isList,
        collectionNamePath: collectionNamePath);
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
            appStateNotifier.setRedirectLocationIfUnset(state.location);
            return '/userType';
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
              ? Center(
                  child: SizedBox(
                    width: 50.0,
                    height: 50.0,
                    child: CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(
                        FlutterFlowTheme.of(context).primary,
                      ),
                    ),
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

  static TransitionInfo appDefault() => const TransitionInfo(hasTransition: false);
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouter.of(context).location;
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}
