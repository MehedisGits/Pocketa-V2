import 'dart:ui';

enum AppLanguage { english, bangla }

const List<AppLanguage> appLanguages = [
  AppLanguage.english,
  AppLanguage.bangla,
];

extension AppLanguageParser on AppLanguage {
  static AppLanguage fromCode(String? code) {
    return appLanguages.firstWhere(
      (lang) => lang.name == code,
      orElse: () => AppLanguage.english,
    );
  }

  String get name => this == AppLanguage.english ? 'en' : 'bn';

  Locale get local =>
      this == AppLanguage.english ? const Locale('en') : const Locale('bn');
}
