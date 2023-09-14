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
  String get ChooseSignUpMethodViewTitleOne {
    return Intl.message(
      'Welcome To',
      name: 'ChooseSignUpMethodViewTitleOne',
      desc: '',
      args: [],
    );
  }

  /// ` CircleSync!`
  String get ChooseSignUpMethodViewTitleTwo {
    return Intl.message(
      ' CircleSync!',
      name: 'ChooseSignUpMethodViewTitleTwo',
      desc: '',
      args: [],
    );
  }

  /// `Join our community to share, discover, and connect with like-minded individuals worldwide.`
  String get ChooseSignUpMethodViewSubTitle {
    return Intl.message(
      'Join our community to share, discover, and connect with like-minded individuals worldwide.',
      name: 'ChooseSignUpMethodViewSubTitle',
      desc: '',
      args: [],
    );
  }

  /// `Register with Facebook`
  String get ChooseSignUpMethodViewFaceBookCard {
    return Intl.message(
      'Register with Facebook',
      name: 'ChooseSignUpMethodViewFaceBookCard',
      desc: '',
      args: [],
    );
  }

  /// `Register with Gmail`
  String get ChooseSignUpMethodViewGmailCard {
    return Intl.message(
      'Register with Gmail',
      name: 'ChooseSignUpMethodViewGmailCard',
      desc: '',
      args: [],
    );
  }

  /// `Or`
  String get ChooseSignUpMethodViewOr {
    return Intl.message(
      'Or',
      name: 'ChooseSignUpMethodViewOr',
      desc: '',
      args: [],
    );
  }

  /// `Register with email`
  String get ChooseSignUpMethodViewEmailCard {
    return Intl.message(
      'Register with email',
      name: 'ChooseSignUpMethodViewEmailCard',
      desc: '',
      args: [],
    );
  }

  /// `Register with phone number`
  String get ChooseSignUpMethodViewPhoneCard {
    return Intl.message(
      'Register with phone number',
      name: 'ChooseSignUpMethodViewPhoneCard',
      desc: '',
      args: [],
    );
  }

  /// `Already have an account? `
  String get ChooseSignUpMethodViewAlradyHaveAccount {
    return Intl.message(
      'Already have an account? ',
      name: 'ChooseSignUpMethodViewAlradyHaveAccount',
      desc: '',
      args: [],
    );
  }

  /// `Log in`
  String get ChooseSignUpMethodViewLogIn {
    return Intl.message(
      'Log in',
      name: 'ChooseSignUpMethodViewLogIn',
      desc: '',
      args: [],
    );
  }

  /// `Create Your`
  String get SignUpWithEmailViewCreateYourAccount {
    return Intl.message(
      'Create Your',
      name: 'SignUpWithEmailViewCreateYourAccount',
      desc: '',
      args: [],
    );
  }

  /// `Account`
  String get SignUpWithEmailViewNow {
    return Intl.message(
      'Account',
      name: 'SignUpWithEmailViewNow',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get SignUpWithEmailViewEmail {
    return Intl.message(
      'Email',
      name: 'SignUpWithEmailViewEmail',
      desc: '',
      args: [],
    );
  }

  /// `Name`
  String get SignUpWithEmailViewName {
    return Intl.message(
      'Name',
      name: 'SignUpWithEmailViewName',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get SignUpWithEmailViewPassword {
    return Intl.message(
      'Password',
      name: 'SignUpWithEmailViewPassword',
      desc: '',
      args: [],
    );
  }

  /// `Confirm Password`
  String get SignUpWithEmailViewConfirmPassword {
    return Intl.message(
      'Confirm Password',
      name: 'SignUpWithEmailViewConfirmPassword',
      desc: '',
      args: [],
    );
  }

  /// `Continue`
  String get SignUpWithEmailViewContinue {
    return Intl.message(
      'Continue',
      name: 'SignUpWithEmailViewContinue',
      desc: '',
      args: [],
    );
  }

  /// `Password must meet the following requirements:`
  String get SignUpWithEmailViewPasswordDialogTitle {
    return Intl.message(
      'Password must meet the following requirements:',
      name: 'SignUpWithEmailViewPasswordDialogTitle',
      desc: '',
      args: [],
    );
  }

  /// `• Be at least eight characters`
  String get SignUpWithEmailViewPasswordDialogFirst {
    return Intl.message(
      '• Be at least eight characters',
      name: 'SignUpWithEmailViewPasswordDialogFirst',
      desc: '',
      args: [],
    );
  }

  /// `• at least one letter`
  String get SignUpWithEmailViewPasswordDialogSecond {
    return Intl.message(
      '• at least one letter',
      name: 'SignUpWithEmailViewPasswordDialogSecond',
      desc: '',
      args: [],
    );
  }

  /// `• at least one capital letter`
  String get SignUpWithEmailViewPasswordDialogThird {
    return Intl.message(
      '• at least one capital letter',
      name: 'SignUpWithEmailViewPasswordDialogThird',
      desc: '',
      args: [],
    );
  }

  /// `• at least one number`
  String get SignUpWithEmailViewPasswordDialogFourth {
    return Intl.message(
      '• at least one number',
      name: 'SignUpWithEmailViewPasswordDialogFourth',
      desc: '',
      args: [],
    );
  }

  /// `OTP Verification`
  String get OtpVerification {
    return Intl.message(
      'OTP Verification',
      name: 'OtpVerification',
      desc: '',
      args: [],
    );
  }

  /// `A Verification Code has been sent to`
  String get OtpVerificationHasBeenSentTo {
    return Intl.message(
      'A Verification Code has been sent to',
      name: 'OtpVerificationHasBeenSentTo',
      desc: '',
      args: [],
    );
  }

  /// `Code will be send in`
  String get OtpVerificationCodeSend {
    return Intl.message(
      'Code will be send in',
      name: 'OtpVerificationCodeSend',
      desc: '',
      args: [],
    );
  }

  /// `Didn't receive code? `
  String get OtpVerificationDidnotReceiveCode {
    return Intl.message(
      'Didn\'t receive code? ',
      name: 'OtpVerificationDidnotReceiveCode',
      desc: '',
      args: [],
    );
  }

  /// `Resend`
  String get OtpVerificationRequestResend {
    return Intl.message(
      'Resend',
      name: 'OtpVerificationRequestResend',
      desc: '',
      args: [],
    );
  }

  /// ` Register`
  String get OtpVerificationRequestRegister {
    return Intl.message(
      ' Register',
      name: 'OtpVerificationRequestRegister',
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
