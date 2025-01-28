// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `ARestro`
  String get app_name {
    return Intl.message(
      'ARestro',
      name: 'app_name',
      desc: '',
      args: [],
    );
  }

  /// `Sign Up`
  String get sign_up {
    return Intl.message(
      'Sign Up',
      name: 'sign_up',
      desc: '',
      args: [],
    );
  }

  /// `Log In`
  String get log_in {
    return Intl.message(
      'Log In',
      name: 'log_in',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get email {
    return Intl.message(
      'Email',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password {
    return Intl.message(
      'Password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `example@gmail.com`
  String get email_example {
    return Intl.message(
      'example@gmail.com',
      name: 'email_example',
      desc: '',
      args: [],
    );
  }

  /// `Enter Your Password`
  String get enter_pass {
    return Intl.message(
      'Enter Your Password',
      name: 'enter_pass',
      desc: '',
      args: [],
    );
  }

  /// `Enter Your Email`
  String get enter_email {
    return Intl.message(
      'Enter Your Email',
      name: 'enter_email',
      desc: '',
      args: [],
    );
  }

  /// `Remember Me`
  String get remember_me {
    return Intl.message(
      'Remember Me',
      name: 'remember_me',
      desc: '',
      args: [],
    );
  }

  /// `Forget Password?`
  String get forget_pass {
    return Intl.message(
      'Forget Password?',
      name: 'forget_pass',
      desc: '',
      args: [],
    );
  }

  /// `Forget Password`
  String get forget_password {
    return Intl.message(
      'Forget Password',
      name: 'forget_password',
      desc: '',
      args: [],
    );
  }

  /// `or continue with`
  String get or_continue_with {
    return Intl.message(
      'or continue with',
      name: 'or_continue_with',
      desc: '',
      args: [],
    );
  }

  /// `Login With Google`
  String get login_with_google {
    return Intl.message(
      'Login With Google',
      name: 'login_with_google',
      desc: '',
      args: [],
    );
  }

  /// `SignUp With Google`
  String get signup_with_google {
    return Intl.message(
      'SignUp With Google',
      name: 'signup_with_google',
      desc: '',
      args: [],
    );
  }

  /// `Don't have an account ?`
  String get do_not_have_account {
    return Intl.message(
      'Don`t have an account ?',
      name: 'do_not_have_account',
      desc: '',
      args: [],
    );
  }

  /// `Create an account`
  String get create_an_account {
    return Intl.message(
      'Create an account',
      name: 'create_an_account',
      desc: '',
      args: [],
    );
  }

  /// `Enter Your Username`
  String get enter_your_username {
    return Intl.message(
      'Enter Your Username',
      name: 'enter_your_username',
      desc: '',
      args: [],
    );
  }

  /// `Enter Your Phone Number`
  String get enter_phone {
    return Intl.message(
      'Enter Your Phone Number',
      name: 'enter_phone',
      desc: '',
      args: [],
    );
  }

  /// `Already have an account ?`
  String get already_have_account {
    return Intl.message(
      'Already have an account ?',
      name: 'already_have_account',
      desc: '',
      args: [],
    );
  }

  /// `Send Code`
  String get send_code {
    return Intl.message(
      'Send Code',
      name: 'send_code',
      desc: '',
      args: [],
    );
  }

  /// `Don’t worry! It happens. Please enter the email associated with your account.`
  String get description_forget_pass {
    return Intl.message(
      'Don’t worry! It happens. Please enter the email associated with your account.',
      name: 'description_forget_pass',
      desc: '',
      args: [],
    );
  }

  /// `Remember Password`
  String get remember_pass {
    return Intl.message(
      'Remember Password',
      name: 'remember_pass',
      desc: '',
      args: [],
    );
  }

  /// `Reset Password`
  String get reset_pass {
    return Intl.message(
      'Reset Password',
      name: 'reset_pass',
      desc: '',
      args: [],
    );
  }

  /// `Enter New Password`
  String get enter_new_pass {
    return Intl.message(
      'Enter New Password',
      name: 'enter_new_pass',
      desc: '',
      args: [],
    );
  }

  /// `Repeat New Password`
  String get repeat_new_pass {
    return Intl.message(
      'Repeat New Password',
      name: 'repeat_new_pass',
      desc: '',
      args: [],
    );
  }

  /// `Please type something you’ll remember`
  String get description_reset_pass {
    return Intl.message(
      'Please type something you’ll remember',
      name: 'description_reset_pass',
      desc: '',
      args: [],
    );
  }

  /// `Back to Login`
  String get back_to_login {
    return Intl.message(
      'Back to Login',
      name: 'back_to_login',
      desc: '',
      args: [],
    );
  }

  /// `Password Changed`
  String get pass_changed {
    return Intl.message(
      'Password Changed',
      name: 'pass_changed',
      desc: '',
      args: [],
    );
  }

  /// `Your Password has been changed successfully`
  String get description_pass_changed {
    return Intl.message(
      'Your Password has been changed successfully',
      name: 'description_pass_changed',
      desc: '',
      args: [],
    );
  }

  /// `Special Offer for March`
  String get special_order_for_march {
    return Intl.message(
      'Special Offer for March',
      name: 'special_order_for_march',
      desc: '',
      args: [],
    );
  }

  /// `Buy Now`
  String get buy_now {
    return Intl.message(
      'Buy Now',
      name: 'buy_now',
      desc: '',
      args: [],
    );
  }

  /// `We are here with the Best Burgers in town.`
  String get we_are_here_with_the_west_wurgers_in_town {
    return Intl.message(
      'We are here with the Best Burgers in town.',
      name: 'we_are_here_with_the_west_wurgers_in_town',
      desc: '',
      args: [],
    );
  }

  /// `Search for food, restaurants...`
  String get search_for_food_restaurants {
    return Intl.message(
      'Search for food, restaurants...',
      name: 'search_for_food_restaurants',
      desc: '',
      args: [],
    );
  }

  /// `Best Offers`
  String get best_offers {
    return Intl.message(
      'Best Offers',
      name: 'best_offers',
      desc: '',
      args: [],
    );
  }

  /// `See all  >`
  String get see_all {
    return Intl.message(
      'See all  >',
      name: 'see_all',
      desc: '',
      args: [],
    );
  }

  /// `Food`
  String get food {
    return Intl.message(
      'Food',
      name: 'food',
      desc: '',
      args: [],
    );
  }

  /// `Restaurants Nearby`
  String get restaurants_nearby {
    return Intl.message(
      'Restaurants Nearby',
      name: 'restaurants_nearby',
      desc: '',
      args: [],
    );
  }

  /// `Restaurants`
  String get restaurants {
    return Intl.message(
      'Restaurants',
      name: 'restaurants',
      desc: '',
      args: [],
    );
  }

  /// `Find Restaurant Nearby`
  String get find_restaurant_nearby {
    return Intl.message(
      'Find Restaurant Nearby',
      name: 'find_restaurant_nearby',
      desc: '',
      args: [],
    );
  }

  /// `Popular Restaurants`
  String get popular_restaurants {
    return Intl.message(
      'Popular Restaurants',
      name: 'popular_restaurants',
      desc: '',
      args: [],
    );
  }

  /// `Search`
  String get search {
    return Intl.message(
      'Search',
      name: 'search',
      desc: '',
      args: [],
    );
  }

  /// `Cart`
  String get cart {
    return Intl.message(
      'Cart',
      name: 'cart',
      desc: '',
      args: [],
    );
  }

  /// `km form your location`
  String get km_form_your_location {
    return Intl.message(
      'km form your location',
      name: 'km_form_your_location',
      desc: '',
      args: [],
    );
  }

  /// `Personal Info`
  String get personal_info {
    return Intl.message(
      'Personal Info',
      name: 'personal_info',
      desc: '',
      args: [],
    );
  }

  /// `Your Name`
  String get your_name {
    return Intl.message(
      'Your Name',
      name: 'your_name',
      desc: '',
      args: [],
    );
  }

  /// `Address`
  String get address {
    return Intl.message(
      'Address',
      name: 'address',
      desc: '',
      args: [],
    );
  }

  /// `Member`
  String get member {
    return Intl.message(
      'Member',
      name: 'member',
      desc: '',
      args: [],
    );
  }

  /// `Contact Info`
  String get contact_info {
    return Intl.message(
      'Contact Info',
      name: 'contact_info',
      desc: '',
      args: [],
    );
  }

  /// `Phone Number`
  String get phone_number {
    return Intl.message(
      'Phone Number',
      name: 'phone_number',
      desc: '',
      args: [],
    );
  }

  /// `Edit`
  String get edit {
    return Intl.message(
      'Edit',
      name: 'edit',
      desc: '',
      args: [],
    );
  }

  /// `Occupation`
  String get occupation {
    return Intl.message(
      'Occupation',
      name: 'occupation',
      desc: '',
      args: [],
    );
  }

  /// `Description`
  String get description {
    return Intl.message(
      'Description',
      name: 'description',
      desc: '',
      args: [],
    );
  }

  /// `Facilities`
  String get facilities {
    return Intl.message(
      'Facilities',
      name: 'facilities',
      desc: '',
      args: [],
    );
  }

  /// `Km from Location`
  String get km_from_location {
    return Intl.message(
      'Km from Location',
      name: 'km_from_location',
      desc: '',
      args: [],
    );
  }

  /// `View On Google Map`
  String get view_on_google_map {
    return Intl.message(
      'View On Google Map',
      name: 'view_on_google_map',
      desc: '',
      args: [],
    );
  }

  /// `View Available Tables`
  String get view_available_tables {
    return Intl.message(
      'View Available Tables',
      name: 'view_available_tables',
      desc: '',
      args: [],
    );
  }

  /// `Snack Bar`
  String get snack_bar {
    return Intl.message(
      'Snack Bar',
      name: 'snack_bar',
      desc: '',
      args: [],
    );
  }

  /// `Bikes and Car Parking`
  String get bikes_and_car_parking {
    return Intl.message(
      'Bikes and Car Parking',
      name: 'bikes_and_car_parking',
      desc: '',
      args: [],
    );
  }

  /// `Toilet`
  String get toilet {
    return Intl.message(
      'Toilet',
      name: 'toilet',
      desc: '',
      args: [],
    );
  }

  /// `24/7 Water Facility`
  String get water_facility {
    return Intl.message(
      '24/7 Water Facility',
      name: 'water_facility',
      desc: '',
      args: [],
    );
  }

  /// `Popular`
  String get popular {
    return Intl.message(
      'Popular',
      name: 'popular',
      desc: '',
      args: [],
    );
  }

  /// `Rating`
  String get rating {
    return Intl.message(
      'Rating',
      name: 'rating',
      desc: '',
      args: [],
    );
  }

  /// `Add to Cart`
  String get add_to_cart {
    return Intl.message(
      'Add to Cart',
      name: 'add_to_cart',
      desc: '',
      args: [],
    );
  }

  /// `Order`
  String get order {
    return Intl.message(
      'Order',
      name: 'order',
      desc: '',
      args: [],
    );
  }

  /// `Order Details`
  String get order_details {
    return Intl.message(
      'Order Details',
      name: 'order_details',
      desc: '',
      args: [],
    );
  }

  /// `Sub Total`
  String get sub_total {
    return Intl.message(
      'Sub Total',
      name: 'sub_total',
      desc: '',
      args: [],
    );
  }

  /// `Delivery Charge`
  String get delivery_charge {
    return Intl.message(
      'Delivery Charge',
      name: 'delivery_charge',
      desc: '',
      args: [],
    );
  }

  /// `Discount`
  String get discount {
    return Intl.message(
      'Discount',
      name: 'discount',
      desc: '',
      args: [],
    );
  }

  /// `Total`
  String get total {
    return Intl.message(
      'Total',
      name: 'total',
      desc: '',
      args: [],
    );
  }

  /// `Place My Order`
  String get place_my_order {
    return Intl.message(
      'Place My Order',
      name: 'place_my_order',
      desc: '',
      args: [],
    );
  }

  /// `Thank You!`
  String get thank_you {
    return Intl.message(
      'Thank You!',
      name: 'thank_you',
      desc: '',
      args: [],
    );
  }

  /// `Order completed`
  String get order_completed {
    return Intl.message(
      'Order completed',
      name: 'order_completed',
      desc: '',
      args: [],
    );
  }

  /// `Skip`
  String get skip {
    return Intl.message(
      'Skip',
      name: 'skip',
      desc: '',
      args: [],
    );
  }

  /// `Submit`
  String get submit {
    return Intl.message(
      'Submit',
      name: 'submit',
      desc: '',
      args: [],
    );
  }

  /// `Leave Feedback`
  String get leave_feedback {
    return Intl.message(
      'Leave Feedback',
      name: 'leave_feedback',
      desc: '',
      args: [],
    );
  }

  /// `Reserve The Table`
  String get reserve_the_table {
    return Intl.message(
      'Reserve The Table',
      name: 'reserve_the_table',
      desc: '',
      args: [],
    );
  }

  /// `Main Room`
  String get main_room {
    return Intl.message(
      'Main Room',
      name: 'main_room',
      desc: '',
      args: [],
    );
  }

  /// `Open Space`
  String get open_space {
    return Intl.message(
      'Open Space',
      name: 'open_space',
      desc: '',
      args: [],
    );
  }

  /// `Order Food`
  String get order_food {
    return Intl.message(
      'Order Food',
      name: 'order_food',
      desc: '',
      args: [],
    );
  }

  /// `Your Table was Reserved Successfully`
  String get your_table_was_reserved_successfully {
    return Intl.message(
      'Your Table was Reserved Successfully',
      name: 'your_table_was_reserved_successfully',
      desc: '',
      args: [],
    );
  }

  /// `Please respect our policies and do come to your reserved Table within the specified* time!`
  String get text_under_reserved_successfully {
    return Intl.message(
      'Please respect our policies and do come to your reserved Table within the specified* time!',
      name: 'text_under_reserved_successfully',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get home {
    return Intl.message(
      'Home',
      name: 'home',
      desc: '',
      args: [],
    );
  }

  /// `About Us`
  String get about_us {
    return Intl.message(
      'About Us',
      name: 'about_us',
      desc: '',
      args: [],
    );
  }

  /// `History`
  String get history {
    return Intl.message(
      'History',
      name: 'history',
      desc: '',
      args: [],
    );
  }

  /// `Help And Support`
  String get Help_And_Support {
    return Intl.message(
      'Help And Support',
      name: 'Help_And_Support',
      desc: '',
      args: [],
    );
  }

  /// `Log out`
  String get log_out {
    return Intl.message(
      'Log out',
      name: 'log_out',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get settings {
    return Intl.message(
      'Settings',
      name: 'settings',
      desc: '',
      args: [],
    );
  }

  /// `Languages`
  String get languages {
    return Intl.message(
      'Languages',
      name: 'languages',
      desc: '',
      args: [],
    );
  }

  /// `English`
  String get english {
    return Intl.message(
      'English',
      name: 'english',
      desc: '',
      args: [],
    );
  }

  /// `Arabic`
  String get arabic {
    return Intl.message(
      'Arabic',
      name: 'arabic',
      desc: '',
      args: [],
    );
  }

  /// `Dashboard`
  String get dashboard {
    return Intl.message(
      'Dashboard',
      name: 'dashboard',
      desc: '',
      args: [],
    );
  }

  /// `Notifications`
  String get notifications {
    return Intl.message(
      'Notifications',
      name: 'notifications',
      desc: '',
      args: [],
    );
  }

  /// `About Arestro`
  String get about_arestro {
    return Intl.message(
      'About Arestro',
      name: 'about_arestro',
      desc: '',
      args: [],
    );
  }

  /// `Feedback`
  String get feedback {
    return Intl.message(
      'Feedback',
      name: 'feedback',
      desc: '',
      args: [],
    );
  }

  /// `Terms And Conditions`
  String get terms_and_condition {
    return Intl.message(
      'Terms And Conditions',
      name: 'terms_and_condition',
      desc: '',
      args: [],
    );
  }

  /// `Privacy Police`
  String get privacy_policy {
    return Intl.message(
      'Privacy Police',
      name: 'privacy_policy',
      desc: '',
      args: [],
    );
  }

  /// `FAQs`
  String get faqs {
    return Intl.message(
      'FAQs',
      name: 'faqs',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
