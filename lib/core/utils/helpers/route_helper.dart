import 'package:arestro/features/auth/presentation/views/auth_view.dart';
import 'package:arestro/features/auth/presentation/views/forget_password_view.dart';
import 'package:arestro/features/auth/presentation/views/forget_password_view.dart';
import 'package:arestro/features/auth/presentation/views/login_view.dart';
import 'package:arestro/features/auth/presentation/views/pass_change_view.dart';
import 'package:arestro/features/auth/presentation/views/pass_change_view.dart';
import 'package:arestro/features/auth/presentation/views/register_view.dart';
import 'package:arestro/features/auth/presentation/views/reset_password_view.dart';
import 'package:arestro/features/auth/presentation/views/reset_password_view.dart';
import 'package:arestro/features/foods/representation/views/food_details_view.dart';
import 'package:arestro/features/home/representation/views/home_view.dart';
import 'package:arestro/features/order/representation/views/order_details_view.dart';
import 'package:arestro/features/order/representation/views/thank_you_view.dart';
import 'package:arestro/features/profile/representation/views/profile_view.dart';
import 'package:arestro/features/restaurants/representation/views/reserve_table_view.dart';
import 'package:arestro/features/restaurants/representation/views/reserve_table_view.dart';
import 'package:arestro/features/restaurants/representation/views/restaurant_details_view.dart';
import 'package:arestro/features/restaurants/representation/views/restaurant_details_view.dart';
import 'package:arestro/features/restaurants/representation/views/widgets/reserve_table_thank_you_view.dart';
import 'package:arestro/features/search/representation/views/search_view.dart';
import 'package:arestro/features/settings/retresentation/views/settings_view.dart';
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
      GoRoute(
        path: SearchView.rn,
        builder: (context, state) => const SearchView(),
      ),
      GoRoute(
        path: ProfileView.rn,
        builder: (context, state) => const ProfileView(),
      ),
      GoRoute(
        path: RestaurantDetailsView.rn,
        builder: (context, state) => const RestaurantDetailsView(),
      ),
      GoRoute(
        path: OrderDetailsView.rn,
        builder: (context, state) => const OrderDetailsView(),
      ),
      GoRoute(
        path: FoodDetailsView.rn,
        builder: (context, state) => const FoodDetailsView(),
      ),
      GoRoute(
        path: ThankYouView.rn,
        builder: (context, state) => const ThankYouView(),
      ),
      GoRoute(
        path: ReserveTableThankYouView.rn,
        builder: (context, state) => const ReserveTableThankYouView(),
      ),
      GoRoute(
        path: ReserveTableView.rn,
        builder: (context, state) => const ReserveTableView(),
      ),
      GoRoute(
        path: SettingsView.rn,
        builder: (context, state) => const SettingsView(),
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
