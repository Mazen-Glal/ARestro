import 'package:arestro/features/auth/presentation/views/auth_view.dart';
import 'package:arestro/features/auth/presentation/views/forget_password_view.dart';
import 'package:arestro/features/auth/presentation/views/forget_password_view.dart';
import 'package:arestro/features/auth/presentation/views/login_view.dart';
import 'package:arestro/features/auth/presentation/views/pass_change_view.dart';
import 'package:arestro/features/auth/presentation/views/pass_change_view.dart';
import 'package:arestro/features/auth/presentation/views/register_view.dart';
import 'package:arestro/features/auth/presentation/views/reset_password_view.dart';
import 'package:arestro/features/auth/presentation/views/reset_password_view.dart';
import 'package:arestro/features/home/representation/views/home_view.dart';
import 'package:go_router/go_router.dart';
class RouteHelper {
  static late String path;
  static final _router = GoRouter(
    initialLocation: path,
    routes: [
      GoRoute(
        path: AuthView.rn,
        builder: (context, state) => const AuthView(),
      ),
      GoRoute(
        path: LoginView.rn,
        builder: (context, state) =>  LoginView(),
      ),
      GoRoute(
        path: RegisterView.rn,
        builder: (context, state) => const RegisterView(),
      ),
      GoRoute(
        path: ForgetPasswordView.rn,
        builder: (context, state) => const ForgetPasswordView(),
      ),
      GoRoute(
        path: ResetPasswordView.rn,
        builder: (context, state) => const ResetPasswordView(),
      ),
      GoRoute(
        path: PasswordChangeView.rn,
        builder: (context, state) => const PasswordChangeView(),
      ),
      GoRoute(
        path: HomeView.rn,
        builder: (context, state) => const HomeView(),
      ),
    ],
  );

  static GoRouter get getRouter {
    // path = SplashView.rn;
    path = AuthView.rn;
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
