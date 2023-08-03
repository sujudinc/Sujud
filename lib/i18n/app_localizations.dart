// 🎯 Dart imports:
import 'dart:async';

// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:intl/intl.dart';

// 🌎 Project imports:
import 'package:sujud/i18n/messages_all.dart';

/*
 * Instructions to generate the localization files:
 *
 * 1. Create all string constants here in the form of getters. In the case of
 *    required parameters, use the following format:
 *
 *      String hello(String name) {
 *        return Intl.message(
 *          'Hello $name',
 *          name: 'hello',
 *          args: [name],
 *          desc: 'Hello message',
 *        );
 *      }
 *
 * 2. To generates the template intl_messages.arb file in the lib/l10n folder
 *    run the following command in the terminal:
 *
 *    fvm flutter pub pub run intl_translation:extract_to_arb --output-dir=lib/l10n lib/configs/app_localizations.dart
 *
 *    After the intl_messages.arb file has been generated, use this to create
 *    the app_en.arb file and other language files i.e. app_es.arb, app_fr.arb,
 *    etc... and translate them to the desired language.
 *
 * 3. When you are done translating the app_en.arb file, run the following to
 *    link the translations to the app:
 *
 *    fvm flutter pub pub run intl_translation:generate_from_arb --output-dir=lib/l10n \ --no-use-deferred-loading lib/configs/app_localizations.dart lib/l10n/intl_*.arb
 */

class AppLocalizations {
  static Future<AppLocalizations> load(Locale locale) {
    final String localeName = Intl.canonicalizedLocale(
      locale.countryCode == null ? locale.languageCode : locale.toString(),
    );

    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      return AppLocalizations();
    });
  }

  static AppLocalizations of(BuildContext context) =>
      Localizations.of<AppLocalizations>(
        context,
        AppLocalizations,
      )!;

  String get appTitle => Intl.message(
        'Sujud',
        name: 'appTitle',
        desc: 'Title for the Sujud app',
      );

  String get titleResetPassword => Intl.message(
        'Reset Password',
        name: 'resetPassword',
        desc: 'Reset Password button text',
      );

  String get titleConfirmAccount => Intl.message(
        'Confirm Account',
        name: 'confirmAccount',
        desc: 'Confirm Account button text',
      );

  String get titleMfa => Intl.message(
        'Multi-Factor Authentication',
        name: 'mfa',
        desc: 'Multi-Factor Authentication button text',
      );

  String get titleCreateMosque => Intl.message(
        'Create Mosque',
        name: 'createMosque',
        desc: 'Create Mosque button text',
      );

  String get titleMosques => Intl.message(
        'Mosques',
        name: 'mosques',
        desc: 'Mosques button text',
      );

  String get buttonNext => Intl.message(
        'Next',
        name: 'next',
        desc: 'Next button text',
      );

  String get buttonAddImage => Intl.message(
        'Add More',
        name: 'buttonAddImage',
        desc: 'Add Image button text',
      );

  String get buttonPrevious => Intl.message(
        'Previous',
        name: 'buttonPrevious',
        desc: 'Previous button text',
      );

  String get buttonLogin => Intl.message(
        'Login',
        name: 'buttonLogin',
        desc: 'Login button text',
      );

  String get buttonComplete => Intl.message(
        'Complete',
        name: 'buttonComplete',
        desc: 'Complete button text',
      );

  String get buttonContinue => Intl.message(
        'Continue',
        name: 'continue',
        desc: 'Continue button text',
      );

  String get buttonCreateMosque => Intl.message(
        'Create Mosque',
        name: 'createMosque',
        desc: 'Create Mosque button text',
      );

  String get buttonReset => Intl.message(
        'Reset',
        name: 'reset',
        desc: 'Reset button text',
      );

  String get buttonSave => Intl.message(
        'Save',
        name: 'save',
        desc: 'Save button text',
      );

  String get buttonConfirm => Intl.message(
        'Confirm',
        name: 'confirm',
        desc: 'Confirm button text',
      );

  String get buttonResendCode => Intl.message(
        'Resend Code',
        name: 'resendCode',
        desc: 'Resend Code button text',
      );

  String get buttonLogout => Intl.message(
        'Logout',
        name: 'buttonLogout',
        desc: 'Logout button text',
      );

  String get buttonVerify => Intl.message(
        'Verify',
        name: 'buttonVerify',
        desc: 'Verify button text',
      );

  String get buttonForgotPassword => Intl.message(
        'Forgot Password?',
        name: 'buttonForgotPassword',
        desc: 'Forgot Password button text',
      );

  String get buttonRegister => Intl.message(
        'Register',
        name: 'buttonRegister',
        desc: 'Register button text',
      );

  String get buttonBack => Intl.message(
        'Go Back',
        name: 'buttonBack',
        desc: 'Back button text',
      );

  String get buttonAddHours => Intl.message(
        'Add Hours',
        name: 'buttonAddHours',
        desc: 'Add Hours button text',
      );

  String get message404 => Intl.message(
        '404 - Page not found',
        name: 'message404',
        desc: '404 page text',
      );

  String get messageRegister => Intl.message(
        'Want us to help you manage a mosque?',
        name: 'messageRegister',
        desc: 'Register message',
      );

  String get messageCreateMosqueForm => Intl.message(
        'The information you provide will be used to create a mosque profile '
        'to help the muslims community find your mosque.\n\nYou can edit this '
        'information later',
        name: 'messageCreateMosque',
        desc: 'Create Mosque message',
      );

  String get messageCreateMosquePage => Intl.message(
        'Looking a bit empty here?',
        name: 'messageCreateMosque',
        desc: 'Create Mosque title text',
      );

  String get messageSocialMedia => Intl.message(
        'Add your mosque social media accounts',
        name: 'messageSocialMedia',
        desc: 'Social Media message',
      );

  String get descriptionCreateMosquePage => Intl.message(
        'Create a mosque and start managing it.',
        name: 'descriptionCreateMosque',
        desc: 'Create Mosque description text',
      );

  String get registerStep1 => Intl.message(
        "What's your name?",
        name: 'registerStep1',
        desc: 'Register Step 1 button text',
      );

  String get registerStep2 => Intl.message(
        'Set up your account.',
        name: 'registerStep2',
        desc: 'Register Step 2 button text',
      );

  String get hintDob => Intl.message(
        'Date of Birth',
        name: 'hintDob',
        desc: 'Date of Birth hint text',
      );

  String get hintImage => Intl.message(
        'Image',
        name: 'hintImage',
        desc: 'Image hint text',
      );

  String get hintSelfie => Intl.message(
        'Selfie',
        name: 'hintSelfie',
        desc: 'Selfie hint text',
      );

  String get hintPhoneNumber => Intl.message(
        'Phone Number',
        name: 'hintPhoneNumber',
        desc: 'Phone Number hint text',
      );

  String get hintEmail => Intl.message(
        'Email',
        name: 'hintEmail',
        desc: 'Email hint text',
      );

  String get hintUrl => Intl.message(
        'URL',
        name: 'hintUrl',
        desc: 'URL hint text',
      );

  String get hintPassword => Intl.message(
        'Password',
        name: 'hintPassword',
        desc: 'Password hint text',
      );

  String get hintFirstName => Intl.message(
        'First Name',
        name: 'hintFirstName',
        desc: 'First Name hint text',
      );

  String get hintLastName => Intl.message(
        'Last Name',
        name: 'hintLastName',
        desc: 'Last Name hint text',
      );

  String get hintConfirmationCode => Intl.message(
        'Confirmation Code',
        name: 'hintConfirmationCode',
        desc: 'Confirmation Code hint text',
      );

  String get hintMosqueName => Intl.message(
        "What's the name of your mosque?",
        name: 'hintMosqueName',
        desc: 'Mosque Name hint text',
      );

  String get hintMosqueDescription => Intl.message(
        'Tell us a bit about your mosque.',
        name: 'hintMosqueDescription',
        desc: 'Mosque Description hint text',
      );

  String get hintMosqueLocation => Intl.message(
        'Where is your mosque located?',
        name: 'hintMosqueLocation',
        desc: 'Mosque Location hint text',
      );

  String get hintMosqueImages => Intl.message(
        'What does your mosque look like?',
        name: 'hintMosqueImages',
        desc: 'Mosque Image hint text',
      );

  String get hintMosqueHours => Intl.message(
        'What times is the mosque open?',
        name: 'hintMosqueHours',
        desc: 'Mosque Hours hint text',
      );

  String get hintMosqueContactInfo => Intl.message(
        'Where can the people reach you?',
        name: 'hintMosqueContactInfo',
        desc: 'Mosque Contact Info hint text',
      );

  String get labelDidntReceiveCode => Intl.message(
        "Didn't receive a code?",
        name: 'didntReceiveCode',
        desc: 'Didnt receive a code label text',
      );

  String labelWaitForCode(int seconds) => Intl.message(
        " Please wait $seconds second${seconds == 1 ? '' : 's'} to request a "
        'new code.',
        name: 'waitSeconds',
        desc: 'Wait for seconds label text',
        args: [seconds],
      );

  String get labelSelectDay => Intl.message(
        'Select Day',
        name: 'selectDay',
        desc: 'Select Day label text',
      );

  String get labelOpenTime => Intl.message(
        'Open Time',
        name: 'openTime',
        desc: 'Open Time label text',
      );

  String get labelCloseTime => Intl.message(
        'Close Time',
        name: 'closeTime',
        desc: 'Close Time label text',
      );

  String get labelOpeningTime => Intl.message(
        'Opening Time',
        name: 'openingTime',
        desc: 'Opening Time label text',
      );

  String get labelClosingTime => Intl.message(
        'Closing Time',
        name: 'closingTime',
        desc: 'Closing Time label text',
      );

  String get headingMosqueName => Intl.message(
        "Welcome! Let's get started by telling us the name of your mosque.",
        name: 'headingMosqueName',
        desc: 'Mosque Name heading text',
      );

  String get subheadingMosqueName => Intl.message(
        'The name of your mosque is important and unique. Let us know what it '
        'is!',
        name: 'subheadingMosqueName',
        desc: 'Mosque Name subheading text',
      );

  String get headingMosqueDescription => Intl.message(
        "Let's add some details about your mosque.",
        name: 'headingMosqueDescription',
        desc: 'Mosque Description heading text',
      );

  String get subheadingMosqueDescription => Intl.message(
        'Use this space to share some information about your mosque and its '
        'significance.',
        name: 'subheadingMosqueDescription',
        desc: 'Mosque Description subheading text',
      );

  String get headingMosqueLocation => Intl.message(
        'Tell us where your mosque is located.',
        name: 'headingMosqueLocation',
        desc: 'Mosque Location heading text',
      );

  String get subheadingMosqueLocation => Intl.message(
        'Knowing the location of your mosque helps users find it easily.',
        name: 'subheadingMosqueLocation',
        desc: 'Mosque Location subheading text',
      );

  String get headingMosqueImages => Intl.message(
        "Let's showcase your beautiful mosque!",
        name: 'headingMosqueImages',
        desc: 'Mosque Image heading text',
      );

  String get subheadingMosqueImages => Intl.message(
        'Upload some images of your mosque to make it more inviting.',
        name: 'subheadingMosqueImages',
        desc: 'Mosque Image subheading text',
      );

  String get headingMosqueHours => Intl.message(
        'Share the opening hours of your mosque.',
        name: 'headingMosqueHours',
        desc: 'Mosque Hours heading text',
      );

  String get subheadingMosqueHours => Intl.message(
        "Keeping your mosque's hours up-to-date helps visitors plan their "
        'visit.',
        name: 'subheadingMosqueHours',
        desc: 'Mosque Hours subheading text',
      );

  String get headingMosqueContactInfo => Intl.message(
        'How can we contact you?',
        name: 'headingMosqueContactInfo',
        desc: 'Mosque Contact Info heading text',
      );

  String get subheadingMosqueContactInfo => Intl.message(
        'Provide contact information to connect with the community.',
        name: 'subheadingMosqueContactInfo',
        desc: 'Mosque Contact Info subheading text',
      );

  String get registerWithPhoneInstead => Intl.message(
        'Register with phone instead',
        name: 'registerWithPhoneInstead',
        desc: 'Register with phone instead button text',
      );

  String get registerWithEmailInstead => Intl.message(
        'Register with email instead',
        name: 'registerWithEmailInstead',
        desc: 'Register with email instead button text',
      );

  String get loginWithPhoneInstead => Intl.message(
        'Login with phone instead',
        name: 'loginWithPhoneInstead',
        desc: 'Login with phone instead button text',
      );

  String get loginWithEmailInstead => Intl.message(
        'Login with email instead',
        name: 'loginWithEmailInstead',
        desc: 'Login with email instead button text',
      );

  String get tabDashboard => Intl.message(
        'Dashboard',
        name: 'dashboard',
        desc: 'Dashboard text',
      );

  String get tabSettings => Intl.message(
        'Settings',
        name: 'settings',
        desc: 'Settings text',
      );

  String get addressLine1 => Intl.message(
        'Address Line 1',
        name: 'addressLine1',
        desc: 'Address Line 1 text',
      );

  String get addressLine2 => Intl.message(
        'Address Line 2',
        name: 'addressLine2',
        desc: 'Address Line 2 text',
      );

  String get addressLine3 => Intl.message(
        'Address Line 3',
        name: 'addressLine2',
        desc: 'Address Line 3 text',
      );

  String get city => Intl.message(
        'City',
        name: 'city',
        desc: 'City text',
      );

  String get province => Intl.message(
        'Province',
        name: 'province',
        desc: 'Province text',
      );

  String get postalCode => Intl.message(
        'Postal Code',
        name: 'postalCode',
        desc: 'Postal Code text',
      );

  String get country => Intl.message(
        'Country',
        name: 'country',
        desc: 'Country text',
      );

  String get latitude => Intl.message(
        'Latitude',
        name: 'latitude',
        desc: 'Latitude text',
      );

  String get longitude => Intl.message(
        'Longitude',
        name: 'longitude',
        desc: 'Longitude text',
      );

  String get monday => Intl.message(
        'Monday',
        name: 'monday',
        desc: 'Monday text',
      );

  String get tuesday => Intl.message(
        'Tuesday',
        name: 'tuesday',
        desc: 'Tuesday text',
      );

  String get wednesday => Intl.message(
        'Wednesday',
        name: 'wednesday',
        desc: 'Wednesday text',
      );

  String get thursday => Intl.message(
        'Thursday',
        name: 'thursday',
        desc: 'Thursday text',
      );

  String get friday => Intl.message(
        'Friday',
        name: 'friday',
        desc: 'Friday text',
      );

  String get saturday => Intl.message(
        'Saturday',
        name: 'saturday',
        desc: 'Saturday text',
      );

  String get sunday => Intl.message(
        'Sunday',
        name: 'sunday',
        desc: 'Sunday text',
      );

  String get fajr => Intl.message(
        'Fajr',
        name: 'fajr',
        desc: 'Fajr text',
      );

  String get thuhr => Intl.message(
        'Thuhr',
        name: 'thuhr',
        desc: 'thuhr text',
      );

  String get jumuah => Intl.message(
        'Jumuah',
        name: 'jumuah',
        desc: 'Jumuah text',
      );

  String get asr => Intl.message(
        'Asr',
        name: 'asr',
        desc: 'Asr text',
      );

  String get maghrib => Intl.message(
        'Maghrib',
        name: 'maghrib',
        desc: 'Maghrib text',
      );

  String get isha => Intl.message(
        'Isha',
        name: 'isha',
        desc: 'Isha text',
      );

  String get eidAlAdha => Intl.message(
        'Eid Al-Adha',
        name: 'eidAlAdha',
        desc: 'Eid Al-Adha text',
      );

  String get eidAlFitr => Intl.message(
        'Eid Al-Fitr',
        name: 'eidAlFitr',
        desc: 'Eid Al-Fitr text',
      );

  String get phoneNumber => Intl.message(
        'Phone Number',
        name: 'phoneNumber',
        desc: 'Phone Number text',
      );

  String get email => Intl.message(
        'Email',
        name: 'email',
        desc: 'Email text',
      );

  String get website => Intl.message(
        'Website',
        name: 'website',
        desc: 'Website text',
      );

  String get facebook => Intl.message(
        'Facebook',
        name: 'facebook',
        desc: 'Facebook text',
      );

  String get instagram => Intl.message(
        'Instagram',
        name: 'instagram',
        desc: 'Instagram text',
      );

  String get twitter => Intl.message(
        'Twitter',
        name: 'twitter',
        desc: 'Twitter text',
      );

  String get youtube => Intl.message(
        'Youtube',
        name: 'youtube',
        desc: 'Youtube text',
      );

  String get bismillah => Intl.message(
        'Bismillah',
        name: 'bismillah',
        desc: 'Bismillah text',
      );

  String get onboardingTitle1 => Intl.message(
        'Asalaamu Alaikum Wa Rahmatullahi Wa Barakaatuh',
        name: 'onboardingTitle1',
        desc: 'Onboarding Title 1 text',
      );

  String get onboardingDescription1 => Intl.message(
        'Welcome to Sujud. A unique platform that connects you with your local '
        'mosque. Get accurate prayer times, announcements and more from your '
        'local mosque.',
        name: 'onboardingDescription1',
        desc: 'Onboarding Description 1 text',
      );

  String get onboardingTitle2 => Intl.message(
        'Never Miss a Prayer',
        name: 'onboardingTitle1',
        desc: 'Onboarding Title 1 text',
      );

  String get onboardingDescription2 => Intl.message(
        'Stay updated with the daily prayer schedule of your local mosque. Get '
        "notified when it's time to pray so you can fulfill your obligations "
        'with ease.',
        name: 'onboardingDescription1',
        desc: 'Onboarding Description 1 text',
      );

  String get onboardingTitle3 => Intl.message(
        'Engage with Your Community',
        name: 'onboardingTitle1',
        desc: 'Onboarding Title 1 text',
      );

  String get onboardingDescription3 => Intl.message(
        'Be a part of your local Muslim community. Get to know about events, '
        'announcements, and more happening at your local mosque.',
        name: 'onboardingDescription1',
        desc: 'Onboarding Description 1 text',
      );

  String get onboardingTitle4 => Intl.message(
        'Bismillah',
        name: 'onboardingTitle1',
        desc: 'Onboarding Title 1 text',
      );

  String get onboardingDescription4 => Intl.message(
        'Join us and feel closer to your local mosque than ever before. Stay '
        "connected, informed, and spiritually enriched. Let's begin this "
        'blessed journey together.',
        name: 'onboardingDescription1',
        desc: 'Onboarding Description 1 text',
      );

  String get mosqueAdmin => Intl.message(
        'Mosque Admin?',
        name: 'mosqueAdmin',
        desc: 'Mosque Admin text',
      );

  String get loginHere => Intl.message(
        'Login here.',
        name: 'loginHere',
        desc: 'Login here text',
      );

  String get asalaamuAlaikum => Intl.message(
        'Asalaamu Alaikum!',
        name: 'asalaamuAlaikum',
        desc: 'Asalaamu Alaikum text',
      );

  String get dashboard => Intl.message(
        'Dashboard',
        name: 'dashboard',
        desc: 'Dashboard text',
      );

  String get errorTitle => Intl.message(
        'Uh-oh...',
        name: 'titleError',
        desc: 'Error text',
      );

  String get errorFieldRequired => Intl.message(
        'This field is required.',
        name: 'errorRequiredField',
        desc: 'Error Required Field text',
      );

  String get errorFieldInvalid => Intl.message(
        'This field is invalid.',
        name: 'errorInvalidField',
        desc: 'Error Invalid Field text',
      );

  String get errorFieldNumeric => Intl.message(
        'This field must be numeric.',
        name: 'errorNumericField',
        desc: 'Error Numeric Field text',
      );

  String errorFieldMinLength(int length) => Intl.message(
        'This field must be at least $length characters long.',
        name: 'errorMinLengthField',
        desc: 'Error Min Length Field text',
      );

  String errorFieldLength(int length) => Intl.message(
        'This field must be $length characters long.',
        name: 'errorLengthField',
        desc: 'Error Length Field text',
      );

  String get errorFieldPhoneNumber => Intl.message(
        'This field must be a valid phone number.',
        name: 'errorPhoneNumberField',
        desc: 'Error Phone Number Field text',
      );

  String get errorFieldEmail => Intl.message(
        'This field must be a valid email address.',
        name: 'errorEmailField',
        desc: 'Error Email Field text',
      );

  String get errorFieldUrl => Intl.message(
        'This field must be a valid URL.',
        name: 'errorUrlField',
        desc: 'Error URL Field text',
      );

  String get errorFieldPassword => Intl.message(
        'This field must be a valid password.',
        name: 'errorPasswordField',
        desc: 'Error Password Field text',
      );

  String get exceptionAuthAliasExists => Intl.message(
        'An account already exists with the same email address but different '
        'sign-in credentials. Sign in using a provider associated with this '
        'email address.',
        name: 'exceptionAuthAliasExists',
        desc: 'Exception Auth Alias Exists text',
      );

  String get exceptionAuthInternalError => Intl.message(
        'An internal error has occurred. Please try again later.',
        name: 'exceptionAuthInternalError',
        desc: 'Exception Auth Internal Error text',
      );

  String get exceptionAuthInvalidParameter => Intl.message(
        'The request contains an invalid parameter value. Verify that the '
        'value of the parameter is valid.',
        name: 'exceptionAuthInvalidParameter',
        desc: 'Exception Auth Invalid Parameter text',
      );

  String get exceptionAuthInvalidPassword => Intl.message(
        'The password is invalid or the user does not have a password.',
        name: 'exceptionAuthInvalidPassword',
        desc: 'Exception Auth Invalid Password text',
      );

  String get exceptionAuthInvalidEmailRoleAccessPolicy => Intl.message(
        'The request attempted to perform an operation on a user which is not '
        'supported by the relevant authentication type.',
        name: 'exceptionAuthInvalidEmailRoleAccessPolicy',
        desc: 'Exception Auth Invalid Email Role Access Policy text',
      );

  String get exceptionAuthInvalidSmsRoleAccessPolicy => Intl.message(
        'The request attempted to perform an operation on a user which is not '
        'supported by the relevant authentication type.',
        name: 'exceptionAuthInvalidSmsRoleAccessPolicy',
        desc: 'Exception Auth Invalid Sms Role Access Policy text',
      );

  String get exceptionAuthInvalidUserPoolConfiguration => Intl.message(
        'The user pool configuration is invalid.',
        name: 'exceptionAuthInvalidUserPoolConfiguration',
        desc: 'Exception Auth Invalid User Pool Configuration text',
      );

  String get exceptionAuthLimitExceeded => Intl.message(
        'The request failed because a limit was exceeded.',
        name: 'exceptionAuthLimitExceeded',
        desc: 'Exception Auth Limit Exceeded text',
      );

  String get exceptionAuthNotAuthorized => Intl.message(
        'The request was denied because the user is not authorized.',
        name: 'exceptionAuthNotAuthorized',
        desc: 'Exception Auth Not Authorized text',
      );

  String get exceptionAuthPasswordResetRequired => Intl.message(
        "The request failed because the user's password has expired.",
        name: 'exceptionAuthPasswordResetRequired',
        desc: 'Exception Auth Password Reset Required text',
      );

  String get exceptionAuthTooManyFailedAttempts => Intl.message(
        'The request failed because the user has entered the wrong password '
        'too many times.',
        name: 'exceptionAuthTooManyFailedAttempts',
        desc: 'Exception Auth Too Many Failed Attempts text',
      );

  String get exceptionAuthTooManyRequests => Intl.message(
        'The request failed because it was sent too soon after the previous '
        'similar request.',
        name: 'exceptionAuthTooManyRequests',
        desc: 'Exception Auth Too Many Requests text',
      );

  String get exceptionAuthUnauthorized => Intl.message(
        'The request failed because the user is not authenticated.',
        name: 'exceptionAuthUnauthorized',
        desc: 'Exception Auth Unauthorized text',
      );

  String get exceptionAuthUserNotConfirmed => Intl.message(
        'The request failed because the user is not confirmed.',
        name: 'exceptionAuthUserNotConfirmed',
        desc: 'Exception Auth User Not Confirmed text',
      );

  String get exceptionAuthUserNotFound => Intl.message(
        'The request failed because the user was not found.',
        name: 'exceptionAuthUserNotFound',
        desc: 'Exception Auth User Not Found text',
      );

  String get exceptionAuthUsernameExists => Intl.message(
        'The request failed because the username is already in use.',
        name: 'exceptionAuthUsernameExists',
        desc: 'Exception Auth Username Exists text',
      );

  String get exceptionAuthUnknownException => Intl.message(
        'An unknown error has occurred. Please try again later.',
        name: 'exceptionAuthUnknownException',
        desc: 'Exception Auth Unknown Exception text',
      );
}

class AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const AppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => ['en'].contains(locale.languageCode);

  @override
  Future<AppLocalizations> load(Locale locale) => AppLocalizations.load(locale);

  @override
  bool shouldReload(LocalizationsDelegate<AppLocalizations> old) => false;
}
