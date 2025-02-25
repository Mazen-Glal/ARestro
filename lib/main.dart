import 'package:arestro/core/utils/customs/assets.dart';
import 'package:arestro/core/utils/customs/constants.dart';
import 'package:arestro/core/utils/helpers/cache_helper.dart';
import 'package:arestro/core/utils/helpers/theme_helper.dart';
import 'package:arestro/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'core/utils/helpers/route_helper.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await CacheHelper.initialCacheHelper();
  language = await CacheHelper.getData(key: "language") ?? Assets.english;
  ThemeData selectedTheme =
      ThemeHelper.isDarkMode ? ThemeHelper.darkTheme : ThemeHelper.lightTheme;
  runApp(MyApp(
    selectedTheme: selectedTheme,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.selectedTheme});
  final ThemeData selectedTheme;
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: RouteHelper.getRouter,
      title: 'Arestro',
      theme: selectedTheme,
      // change language from here (locale).
      // locale: const Locale("en"),
      locale: language == Assets.english ? const Locale("en") : const Locale("ar"),
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
    );
  }
}
