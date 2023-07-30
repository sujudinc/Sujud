// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a messages locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names

// 📦 Package imports:
import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = MessageLookup();

typedef String? MessageIfAbsent(
    String? messageStr, List<Object>? args);

class MessageLookup extends MessageLookupByLibrary {
  @override
  String get localeName => 'messages';

  static m0(name) => "Hello ${name}";

  @override
  final Map<String, dynamic> messages = _notInlinedMessages(_notInlinedMessages);

  static Map<String, dynamic> _notInlinedMessages(_) => {
      'appTitle': MessageLookupByLibrary.simpleMessage('BilowApp'),
    'error': MessageLookupByLibrary.simpleMessage('Error'),
    'getStarted': MessageLookupByLibrary.simpleMessage('Get Started'),
    'hello': m0,
    'hintDob': MessageLookupByLibrary.simpleMessage('Date of Birth'),
    'hintEmail': MessageLookupByLibrary.simpleMessage('Email'),
    'hintFirstName': MessageLookupByLibrary.simpleMessage('First Name'),
    'hintImage': MessageLookupByLibrary.simpleMessage('Image'),
    'hintLastName': MessageLookupByLibrary.simpleMessage('Last Name'),
    'hintPassword': MessageLookupByLibrary.simpleMessage('Password'),
    'hintPhoneNumber': MessageLookupByLibrary.simpleMessage('Phone Number'),
    'login': MessageLookupByLibrary.simpleMessage('Login'),
    'loginHelper': MessageLookupByLibrary.simpleMessage('Implement login functionality here and GoRouter will take care of the rest!'),
    'register': MessageLookupByLibrary.simpleMessage('Register'),
    'success': MessageLookupByLibrary.simpleMessage('Success'),
    'unknownError': MessageLookupByLibrary.simpleMessage('Unknown Error'),
    'warning': MessageLookupByLibrary.simpleMessage('Warning')
  };
}
