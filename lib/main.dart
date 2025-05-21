import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart'; // ✅ Correct Import
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pocketa_v2/config/router/routes.dart';
import 'package:pocketa_v2/core/constants/app_language.dart';
import 'package:pocketa_v2/core/themes/app_theme.dart';

import 'application/providers/language_provider.dart';
import 'core/local_storage/hive_service.dart';
import 'core/local_storage/shared_pref_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await HiveService.init();
  await SharedPrefServices.init();
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final lang = ref.watch(languageProvider);

    return MaterialApp(
      title: 'Pocketa',
      locale: lang.local,
      supportedLocales: const [Locale('en'), Locale('bn')],
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      theme: AppThemeData.lightTheme(context, lang),
      darkTheme: AppThemeData.darkTheme(context, lang),
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: appRoutes,
    );
  }
}
