// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'Photo Wall';

  @override
  String get homeTabPhoto => 'Photo Wall';

  @override
  String get homeTabMessage => 'Message Wall';

  @override
  String get actionPublish => 'Publish';

  @override
  String get actionLike => 'Like';

  @override
  String get actionReport => 'Report';

  @override
  String get actionRevoke => 'Revoke';

  @override
  String get actionEdit => 'Edit';

  @override
  String get actionDelete => 'Delete';

  @override
  String get actionRetry => 'Retry';

  @override
  String get stateLoading => 'Loading...';

  @override
  String get stateEmpty => 'No content yet';

  @override
  String get errorNetwork => 'Network error, please try again';

  @override
  String get errorUnknown => 'Unknown error occurred';

  @override
  String get errorPageNotFound => 'Page not found';

  @override
  String get editorHintMessage => 'Write something...';

  @override
  String get editorHintPhoto => 'Select photo';

  @override
  String get loginTitle => 'Login';

  @override
  String get registerTitle => 'Register';
}
