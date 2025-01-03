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
