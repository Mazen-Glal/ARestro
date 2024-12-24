import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
class RouteHelper {
  static late String path;
  static final _router = GoRouter(
    initialLocation: path,
    routes: [
      // Splash and OnBoarding and Location Access Permission
      // GoRoute(
      //   path: SplashView.rn,
      //   builder: (context, state) => const SplashView(),
      // ),
      GoRoute(
        path: '/',
        builder: (context, state) => const Scaffold(),
      ),
    ],
  );

  static GoRouter get getRouter {
    // path = SplashView.rn;
    path = '/';
    return _router;
  }
}

// GoRoute(
//   path: AddReviewScreen.rn,
//   builder: (context, state) {
//     Map<String, dynamic> map = state.extra as Map<String, dynamic>;
//     return MultiBlocProvider(
//       providers: [
//         BlocProvider.value(value: map["cubit1"] as CarCenterCubit),
//         BlocProvider.value(value: map["cubit2"] as ReviewCubit),
//       ],
//       child: AddReviewScreen(
//         doc: map["doc"] as String,
//         // state.params["doc"]!
//         carCenterModel: map["model"] as CarCenterModel,
//         //  state.extra as CarCenterModel
//       ),
//     );
//   },
// ),
// GoRoute(
//   path: CarCenterMap.rn,
//   builder: (context, state) => CarCenterMap(
//     carCenterModel: state.extra as CarCenterModel,
//   ),
// ),
