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

  /// `Welcome To`
  String get SignUpViewTitleOne {
    return Intl.message(
      'Welcome To',
      name: 'SignUpViewTitleOne',
      desc: '',
      args: [],
    );
  }

  /// ` CircleSync!`
  String get SignUpViewTitleTwo {
    return Intl.message(
      ' CircleSync!',
      name: 'SignUpViewTitleTwo',
      desc: '',
      args: [],
    );
  }

  /// `Join our community to share, discover, and connect with like-minded individuals worldwide.`
  String get SignUpViewSubTitle {
    return Intl.message(
      'Join our community to share, discover, and connect with like-minded individuals worldwide.',
      name: 'SignUpViewSubTitle',
      desc: '',
      args: [],
    );
  }

  /// `Continue with Facebook`
  String get SignUpViewFaceBookCard {
    return Intl.message(
      'Continue with Facebook',
      name: 'SignUpViewFaceBookCard',
      desc: '',
      args: [],
    );
  }

  /// `Continue with Gmail`
  String get SignUpViewGmailCard {
    return Intl.message(
      'Continue with Gmail',
      name: 'SignUpViewGmailCard',
      desc: '',
      args: [],
    );
  }

  /// `Or`
  String get SignUpViewOr {
    return Intl.message(
      'Or',
      name: 'SignUpViewOr',
      desc: '',
      args: [],
    );
  }

  /// `Continue with email`
  String get SignUpViewEmailCard {
    return Intl.message(
      'Continue with email',
      name: 'SignUpViewEmailCard',
      desc: '',
      args: [],
    );
  }

  /// `Already have an account? `
  String get SignUpViewAlradyHaveAccount {
    return Intl.message(
      'Already have an account? ',
      name: 'SignUpViewAlradyHaveAccount',
      desc: '',
      args: [],
    );
  }

  /// `Log in`
  String get SignUpViewLogIn {
    return Intl.message(
      'Log in',
      name: 'SignUpViewLogIn',
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
