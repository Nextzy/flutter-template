///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import

part of 'localization.g.dart';

// Path: <root>
typedef TranslationsEnGb = Translations; // ignore: unused_element
class Translations implements BaseTranslations<AppLocale, Translations> {
	/// Returns the current translations of the given [context].
	///
	/// Usage:
	/// final Strings = Translations.of(context);
	static Translations of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context).translations;

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	Translations({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.enGb,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en-GB>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	dynamic operator[](String key) => $meta.getTranslation(key);

	late final Translations _root = this; // ignore: unused_field

	Translations $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => Translations(meta: meta ?? this.$meta);

	// Translations
	late final TranslationsCommonEnGb common = TranslationsCommonEnGb.internal(_root);
	late final TranslationsAuthEnGb auth = TranslationsAuthEnGb.internal(_root);
}

// Path: common
class TranslationsCommonEnGb {
	TranslationsCommonEnGb.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsCommonTitleEnGb title = TranslationsCommonTitleEnGb.internal(_root);
	late final TranslationsCommonMessageEnGb message = TranslationsCommonMessageEnGb.internal(_root);
	late final TranslationsCommonBadgeEnGb badge = TranslationsCommonBadgeEnGb.internal(_root);
	late final TranslationsCommonButtonEnGb button = TranslationsCommonButtonEnGb.internal(_root);
	late final TranslationsCommonSuccessEnGb success = TranslationsCommonSuccessEnGb.internal(_root);
	late final TranslationsCommonFailEnGb fail = TranslationsCommonFailEnGb.internal(_root);
	late final TranslationsCommonAlertEnGb alert = TranslationsCommonAlertEnGb.internal(_root);
}

// Path: auth
class TranslationsAuthEnGb {
	TranslationsAuthEnGb.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsAuthTitleEnGb title = TranslationsAuthTitleEnGb.internal(_root);
	late final TranslationsAuthButtonEnGb button = TranslationsAuthButtonEnGb.internal(_root);
	late final TranslationsAuthFailEnGb fail = TranslationsAuthFailEnGb.internal(_root);
}

// Path: common.title
class TranslationsCommonTitleEnGb {
	TranslationsCommonTitleEnGb.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get confirmation => 'Confirmation';
	String get forceUpdate => 'Force Update';
	String get softUpdate => 'Update Available';
	String get today => 'Today';
	String get yesterday => 'Yesterday';
}

// Path: common.message
class TranslationsCommonMessageEnGb {
	TranslationsCommonMessageEnGb.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get confirmationDelete => 'Are you sure you want to delete?';
	String get forceUpdate => 'A new version is available. Please update to continue.';
	String get softUpdate => 'A new version is available. Would you like to update now?';
	String get noData => 'No data available';
	String get processing => 'Processing...';
	String get loading => 'Loading...';
	String prefixRef({required Object ref}) => 'Ref: ${ref}';
	String estimateMinuteTime({required Object minute}) => 'Estimate ~${minute} minutes';
	String paginationOfTotal({required Object total}) => 'of ${total}';
	String paginationOfTotalPages({required Object total}) => 'of ${total} pages';
	String paginationOfTotalItems({required Object start, required Object end, required Object total}) => '${start}-${end} of ${total} items';
	String paginationPageOfTotal({required Object page, required Object total}) => 'Page ${page} of ${total}';
	String get paginationItemsPerPage => 'items per page';
	String get timeAm => 'AM';
	String get timePm => 'PM';
	String get sliderMinValue => 'Min value';
	String get sliderMaxValue => 'Max value';
}

// Path: common.badge
class TranslationsCommonBadgeEnGb {
	TranslationsCommonBadgeEnGb.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get kNew => 'New';
}

// Path: common.button
class TranslationsCommonButtonEnGb {
	TranslationsCommonButtonEnGb.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get ok => 'OK';
	String get cancel => 'Cancel';
	String get back => 'Back';
	String get updateNow => 'Update now';
	String get later => 'Later';
	String get update => 'Update';
	String get save => 'Save';
	String get edit => 'Edit';
	String get delete => 'Delete';
	String get confirm => 'Confirm';
	String get submit => 'Submit';
	String get search => 'Search';
	String get detail => 'Detail';
	String get close => 'Close';
	String get next => 'Next';
	String get copy => 'Copy';
	String get scan => 'Scan';
	String get skip => 'Skip';
	String get signOut => 'Sign out';
	String get previous => 'Previous';
}

// Path: common.success
class TranslationsCommonSuccessEnGb {
	TranslationsCommonSuccessEnGb.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get general => 'Successfully';
	String get saved => 'Saved successfully';
	String get updated => 'Updated successfully';
	String get deleted => 'Deleted successfully';
}

// Path: common.fail
class TranslationsCommonFailEnGb {
	TranslationsCommonFailEnGb.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get saved => 'Save failed. Please try again later';
	String get general => 'An error occurred. Please try again later';
	String get updated => 'Update failed. Please try again later';
	String get network => 'Network error. Please check your connection';
}

// Path: common.alert
class TranslationsCommonAlertEnGb {
	TranslationsCommonAlertEnGb.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsCommonAlertInfoEnGb info = TranslationsCommonAlertInfoEnGb.internal(_root);
}

// Path: auth.title
class TranslationsAuthTitleEnGb {
	TranslationsAuthTitleEnGb.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get enterPin => 'Enter PIN';
}

// Path: auth.button
class TranslationsAuthButtonEnGb {
	TranslationsAuthButtonEnGb.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get signInWithGoogle => 'Sign in with Google';
	String get signInWithTwitter => 'Sign in with Twitter';
	String get signInWithFacebook => 'Sign in with Facebook';
	String get signInWithApple => 'Sign in with Apple';
	String get signInWithGithub => 'Sign in with GitHub';
	String get signInWithMicrosoft => 'Sign in with Microsoft';
	String get termsOfService => 'Terms of Service';
	String get privacyPolicy => 'Privacy Policy';
	String get requestOtp => 'Request OTP code';
	String requestAgain({required Object counter}) => 'Send code again (${counter})';
}

// Path: auth.fail
class TranslationsAuthFailEnGb {
	TranslationsAuthFailEnGb.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get wrongOtp => 'Incorrect code. Please enter the code again';
}

// Path: common.alert.info
class TranslationsCommonAlertInfoEnGb {
	TranslationsCommonAlertInfoEnGb.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get doubleTapExit => 'Press back again to exit';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on Translations {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'common.title.confirmation': return 'Confirmation';
			case 'common.title.forceUpdate': return 'Force Update';
			case 'common.title.softUpdate': return 'Update Available';
			case 'common.title.today': return 'Today';
			case 'common.title.yesterday': return 'Yesterday';
			case 'common.message.confirmationDelete': return 'Are you sure you want to delete?';
			case 'common.message.forceUpdate': return 'A new version is available. Please update to continue.';
			case 'common.message.softUpdate': return 'A new version is available. Would you like to update now?';
			case 'common.message.noData': return 'No data available';
			case 'common.message.processing': return 'Processing...';
			case 'common.message.loading': return 'Loading...';
			case 'common.message.prefixRef': return ({required Object ref}) => 'Ref: ${ref}';
			case 'common.message.estimateMinuteTime': return ({required Object minute}) => 'Estimate ~${minute} minutes';
			case 'common.message.paginationOfTotal': return ({required Object total}) => 'of ${total}';
			case 'common.message.paginationOfTotalPages': return ({required Object total}) => 'of ${total} pages';
			case 'common.message.paginationOfTotalItems': return ({required Object start, required Object end, required Object total}) => '${start}-${end} of ${total} items';
			case 'common.message.paginationPageOfTotal': return ({required Object page, required Object total}) => 'Page ${page} of ${total}';
			case 'common.message.paginationItemsPerPage': return 'items per page';
			case 'common.message.timeAm': return 'AM';
			case 'common.message.timePm': return 'PM';
			case 'common.message.sliderMinValue': return 'Min value';
			case 'common.message.sliderMaxValue': return 'Max value';
			case 'common.badge.kNew': return 'New';
			case 'common.button.ok': return 'OK';
			case 'common.button.cancel': return 'Cancel';
			case 'common.button.back': return 'Back';
			case 'common.button.updateNow': return 'Update now';
			case 'common.button.later': return 'Later';
			case 'common.button.update': return 'Update';
			case 'common.button.save': return 'Save';
			case 'common.button.edit': return 'Edit';
			case 'common.button.delete': return 'Delete';
			case 'common.button.confirm': return 'Confirm';
			case 'common.button.submit': return 'Submit';
			case 'common.button.search': return 'Search';
			case 'common.button.detail': return 'Detail';
			case 'common.button.close': return 'Close';
			case 'common.button.next': return 'Next';
			case 'common.button.copy': return 'Copy';
			case 'common.button.scan': return 'Scan';
			case 'common.button.skip': return 'Skip';
			case 'common.button.signOut': return 'Sign out';
			case 'common.button.previous': return 'Previous';
			case 'common.success.general': return 'Successfully';
			case 'common.success.saved': return 'Saved successfully';
			case 'common.success.updated': return 'Updated successfully';
			case 'common.success.deleted': return 'Deleted successfully';
			case 'common.fail.saved': return 'Save failed. Please try again later';
			case 'common.fail.general': return 'An error occurred. Please try again later';
			case 'common.fail.updated': return 'Update failed. Please try again later';
			case 'common.fail.network': return 'Network error. Please check your connection';
			case 'common.alert.info.doubleTapExit': return 'Press back again to exit';
			case 'auth.title.enterPin': return 'Enter PIN';
			case 'auth.button.signInWithGoogle': return 'Sign in with Google';
			case 'auth.button.signInWithTwitter': return 'Sign in with Twitter';
			case 'auth.button.signInWithFacebook': return 'Sign in with Facebook';
			case 'auth.button.signInWithApple': return 'Sign in with Apple';
			case 'auth.button.signInWithGithub': return 'Sign in with GitHub';
			case 'auth.button.signInWithMicrosoft': return 'Sign in with Microsoft';
			case 'auth.button.termsOfService': return 'Terms of Service';
			case 'auth.button.privacyPolicy': return 'Privacy Policy';
			case 'auth.button.requestOtp': return 'Request OTP code';
			case 'auth.button.requestAgain': return ({required Object counter}) => 'Send code again (${counter})';
			case 'auth.fail.wrongOtp': return 'Incorrect code. Please enter the code again';
			default: return null;
		}
	}
}

