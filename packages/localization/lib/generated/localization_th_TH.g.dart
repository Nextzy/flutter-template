///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import

import 'localization.g.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:slang/generated.dart';

// Path: <root>
class TranslationsThTh extends Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsThTh({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.thTh,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		super.$meta.setFlatMapFunction($meta.getTranslation); // copy base translations to super.$meta
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <th-TH>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	late final TranslationsThTh _root = this; // ignore: unused_field

	@override 
	TranslationsThTh $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsThTh(meta: meta ?? this.$meta);

	// Translations
	@override late final _TranslationsCommonThTh common = _TranslationsCommonThTh._(_root);
	@override late final _TranslationsAuthThTh auth = _TranslationsAuthThTh._(_root);
}

// Path: common
class _TranslationsCommonThTh extends TranslationsCommonEnGb {
	_TranslationsCommonThTh._(TranslationsThTh root) : this._root = root, super.internal(root);

	final TranslationsThTh _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsCommonTitleThTh title = _TranslationsCommonTitleThTh._(_root);
	@override late final _TranslationsCommonMessageThTh message = _TranslationsCommonMessageThTh._(_root);
	@override late final _TranslationsCommonBadgeThTh badge = _TranslationsCommonBadgeThTh._(_root);
	@override late final _TranslationsCommonButtonThTh button = _TranslationsCommonButtonThTh._(_root);
	@override late final _TranslationsCommonSuccessThTh success = _TranslationsCommonSuccessThTh._(_root);
	@override late final _TranslationsCommonFailThTh fail = _TranslationsCommonFailThTh._(_root);
	@override late final _TranslationsCommonAlertThTh alert = _TranslationsCommonAlertThTh._(_root);
}

// Path: auth
class _TranslationsAuthThTh extends TranslationsAuthEnGb {
	_TranslationsAuthThTh._(TranslationsThTh root) : this._root = root, super.internal(root);

	final TranslationsThTh _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsAuthTitleThTh title = _TranslationsAuthTitleThTh._(_root);
	@override late final _TranslationsAuthButtonThTh button = _TranslationsAuthButtonThTh._(_root);
	@override late final _TranslationsAuthFailThTh fail = _TranslationsAuthFailThTh._(_root);
}

// Path: common.title
class _TranslationsCommonTitleThTh extends TranslationsCommonTitleEnGb {
	_TranslationsCommonTitleThTh._(TranslationsThTh root) : this._root = root, super.internal(root);

	final TranslationsThTh _root; // ignore: unused_field

	// Translations
	@override String get confirmation => 'ยืนยัน';
	@override String get forceUpdate => 'อัพเดทเวอร์ชันใหม่';
	@override String get softUpdate => 'มีอัพเดทใหม่';
	@override String get today => 'วันนี้';
	@override String get yesterday => 'เมื่อวาน';
}

// Path: common.message
class _TranslationsCommonMessageThTh extends TranslationsCommonMessageEnGb {
	_TranslationsCommonMessageThTh._(TranslationsThTh root) : this._root = root, super.internal(root);

	final TranslationsThTh _root; // ignore: unused_field

	// Translations
	@override String get confirmationDelete => 'คุณแน่ใจหรือไม่ที่จะลบ?';
	@override String get forceUpdate => 'มีเวอร์ชันใหม่ กรุณาอัพเดทเพื่อดำเนินการต่อ';
	@override String get softUpdate => 'มีเวอร์ชันใหม่ คุณต้องการอัพเดทเดี๋ยวนี้หรือไม่?';
	@override String get noData => 'ไม่มีข้อมูล';
	@override String get processing => 'กำลังดำเนินการ...';
	@override String get loading => 'กำลังโหลด...';
	@override String prefixRef({required Object ref}) => 'อ้างอิง: ${ref}';
	@override String estimateMinuteTime({required Object minute}) => 'ประมาณ ~${minute} นาที';
	@override String paginationOfTotal({required Object total}) => 'จาก ${total}';
	@override String paginationOfTotalPages({required Object total}) => 'จาก ${total} หน้า';
	@override String paginationOfTotalItems({required Object start, required Object end, required Object total}) => '${start}-${end} จาก ${total} รายการ';
	@override String paginationPageOfTotal({required Object page, required Object total}) => 'หน้าที่ ${page} จาก ${total}';
	@override String get paginationItemsPerPage => 'รายการต่อหน้า';
	@override String get timeAm => 'AM';
	@override String get timePm => 'PM';
	@override String get sliderMinValue => 'ค่าต่ำสุด';
	@override String get sliderMaxValue => 'ค่าสูงสุด';
}

// Path: common.badge
class _TranslationsCommonBadgeThTh extends TranslationsCommonBadgeEnGb {
	_TranslationsCommonBadgeThTh._(TranslationsThTh root) : this._root = root, super.internal(root);

	final TranslationsThTh _root; // ignore: unused_field

	// Translations
	@override String get kNew => 'ใหม่';
}

// Path: common.button
class _TranslationsCommonButtonThTh extends TranslationsCommonButtonEnGb {
	_TranslationsCommonButtonThTh._(TranslationsThTh root) : this._root = root, super.internal(root);

	final TranslationsThTh _root; // ignore: unused_field

	// Translations
	@override String get ok => 'ตกลง';
	@override String get cancel => 'ยกเลิก';
	@override String get back => 'กลับ';
	@override String get updateNow => 'Update now';
	@override String get later => 'ภายหลัง';
	@override String get update => 'อัพเดท';
	@override String get save => 'บันทึก';
	@override String get edit => 'แก้ไข';
	@override String get delete => 'ลบ';
	@override String get confirm => 'ยืนยัน';
	@override String get submit => 'ยืนยัน';
	@override String get search => 'ค้นหา';
	@override String get detail => 'รายละเอียด';
	@override String get close => 'ปิด';
	@override String get next => 'ต่อไป';
	@override String get copy => 'คัดลอก';
	@override String get scan => 'สแกน';
	@override String get skip => 'ข้าม';
	@override String get signOut => 'ออกจากระบบ';
	@override String get previous => 'ก่อนหน้า';
}

// Path: common.success
class _TranslationsCommonSuccessThTh extends TranslationsCommonSuccessEnGb {
	_TranslationsCommonSuccessThTh._(TranslationsThTh root) : this._root = root, super.internal(root);

	final TranslationsThTh _root; // ignore: unused_field

	// Translations
	@override String get general => 'สำเร็จ';
	@override String get saved => 'บันทึกสำเร็จ';
	@override String get updated => 'อัพเดทสำเร็จ';
	@override String get deleted => 'ลบสำเร็จ';
}

// Path: common.fail
class _TranslationsCommonFailThTh extends TranslationsCommonFailEnGb {
	_TranslationsCommonFailThTh._(TranslationsThTh root) : this._root = root, super.internal(root);

	final TranslationsThTh _root; // ignore: unused_field

	// Translations
	@override String get saved => 'บันทึกไม่สำเร็จ โปรดลองใหม่อีกครั้ง';
	@override String get general => 'เกิดข้อผิดพลาด โปรดลองใหม่อีกครั้ง';
	@override String get updated => 'อัพเดทไม่สำเร็จ โปรดลองใหม่อีกครั้ง';
	@override String get network => 'ข้อผิดพลาดเครือข่าย โปรดตรวจสอบการเชื่อมต่อ';
}

// Path: common.alert
class _TranslationsCommonAlertThTh extends TranslationsCommonAlertEnGb {
	_TranslationsCommonAlertThTh._(TranslationsThTh root) : this._root = root, super.internal(root);

	final TranslationsThTh _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsCommonAlertInfoThTh info = _TranslationsCommonAlertInfoThTh._(_root);
}

// Path: auth.title
class _TranslationsAuthTitleThTh extends TranslationsAuthTitleEnGb {
	_TranslationsAuthTitleThTh._(TranslationsThTh root) : this._root = root, super.internal(root);

	final TranslationsThTh _root; // ignore: unused_field

	// Translations
	@override String get enterPin => 'กรุณาใส่ PIN';
}

// Path: auth.button
class _TranslationsAuthButtonThTh extends TranslationsAuthButtonEnGb {
	_TranslationsAuthButtonThTh._(TranslationsThTh root) : this._root = root, super.internal(root);

	final TranslationsThTh _root; // ignore: unused_field

	// Translations
	@override String get signInWithGoogle => 'Sign in with Google';
	@override String get signInWithTwitter => 'Sign in with Twitter';
	@override String get signInWithFacebook => 'Sign in with Facebook';
	@override String get signInWithApple => 'Sign in with Apple';
	@override String get signInWithGithub => 'Sign in with GitHub';
	@override String get signInWithMicrosoft => 'Sign in with Microsoft';
	@override String get termsOfService => 'Terms of Service';
	@override String get privacyPolicy => 'Privacy Policy';
	@override String get requestOtp => 'ขอรหัส OTP';
	@override String requestAgain({required Object counter}) => 'ส่งรหัสอีกครั้ง (${counter})';
}

// Path: auth.fail
class _TranslationsAuthFailThTh extends TranslationsAuthFailEnGb {
	_TranslationsAuthFailThTh._(TranslationsThTh root) : this._root = root, super.internal(root);

	final TranslationsThTh _root; // ignore: unused_field

	// Translations
	@override String get wrongOtp => 'รหัสไม่ถูกต้อง กรุณาใส่รหัสอีกครั้ง';
}

// Path: common.alert.info
class _TranslationsCommonAlertInfoThTh extends TranslationsCommonAlertInfoEnGb {
	_TranslationsCommonAlertInfoThTh._(TranslationsThTh root) : this._root = root, super.internal(root);

	final TranslationsThTh _root; // ignore: unused_field

	// Translations
	@override String get doubleTapExit => 'กดอีกครั้งเพื่อออกจากแอป';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on TranslationsThTh {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'common.title.confirmation': return 'ยืนยัน';
			case 'common.title.forceUpdate': return 'อัพเดทเวอร์ชันใหม่';
			case 'common.title.softUpdate': return 'มีอัพเดทใหม่';
			case 'common.title.today': return 'วันนี้';
			case 'common.title.yesterday': return 'เมื่อวาน';
			case 'common.message.confirmationDelete': return 'คุณแน่ใจหรือไม่ที่จะลบ?';
			case 'common.message.forceUpdate': return 'มีเวอร์ชันใหม่ กรุณาอัพเดทเพื่อดำเนินการต่อ';
			case 'common.message.softUpdate': return 'มีเวอร์ชันใหม่ คุณต้องการอัพเดทเดี๋ยวนี้หรือไม่?';
			case 'common.message.noData': return 'ไม่มีข้อมูล';
			case 'common.message.processing': return 'กำลังดำเนินการ...';
			case 'common.message.loading': return 'กำลังโหลด...';
			case 'common.message.prefixRef': return ({required Object ref}) => 'อ้างอิง: ${ref}';
			case 'common.message.estimateMinuteTime': return ({required Object minute}) => 'ประมาณ ~${minute} นาที';
			case 'common.message.paginationOfTotal': return ({required Object total}) => 'จาก ${total}';
			case 'common.message.paginationOfTotalPages': return ({required Object total}) => 'จาก ${total} หน้า';
			case 'common.message.paginationOfTotalItems': return ({required Object start, required Object end, required Object total}) => '${start}-${end} จาก ${total} รายการ';
			case 'common.message.paginationPageOfTotal': return ({required Object page, required Object total}) => 'หน้าที่ ${page} จาก ${total}';
			case 'common.message.paginationItemsPerPage': return 'รายการต่อหน้า';
			case 'common.message.timeAm': return 'AM';
			case 'common.message.timePm': return 'PM';
			case 'common.message.sliderMinValue': return 'ค่าต่ำสุด';
			case 'common.message.sliderMaxValue': return 'ค่าสูงสุด';
			case 'common.badge.kNew': return 'ใหม่';
			case 'common.button.ok': return 'ตกลง';
			case 'common.button.cancel': return 'ยกเลิก';
			case 'common.button.back': return 'กลับ';
			case 'common.button.updateNow': return 'Update now';
			case 'common.button.later': return 'ภายหลัง';
			case 'common.button.update': return 'อัพเดท';
			case 'common.button.save': return 'บันทึก';
			case 'common.button.edit': return 'แก้ไข';
			case 'common.button.delete': return 'ลบ';
			case 'common.button.confirm': return 'ยืนยัน';
			case 'common.button.submit': return 'ยืนยัน';
			case 'common.button.search': return 'ค้นหา';
			case 'common.button.detail': return 'รายละเอียด';
			case 'common.button.close': return 'ปิด';
			case 'common.button.next': return 'ต่อไป';
			case 'common.button.copy': return 'คัดลอก';
			case 'common.button.scan': return 'สแกน';
			case 'common.button.skip': return 'ข้าม';
			case 'common.button.signOut': return 'ออกจากระบบ';
			case 'common.button.previous': return 'ก่อนหน้า';
			case 'common.success.general': return 'สำเร็จ';
			case 'common.success.saved': return 'บันทึกสำเร็จ';
			case 'common.success.updated': return 'อัพเดทสำเร็จ';
			case 'common.success.deleted': return 'ลบสำเร็จ';
			case 'common.fail.saved': return 'บันทึกไม่สำเร็จ โปรดลองใหม่อีกครั้ง';
			case 'common.fail.general': return 'เกิดข้อผิดพลาด โปรดลองใหม่อีกครั้ง';
			case 'common.fail.updated': return 'อัพเดทไม่สำเร็จ โปรดลองใหม่อีกครั้ง';
			case 'common.fail.network': return 'ข้อผิดพลาดเครือข่าย โปรดตรวจสอบการเชื่อมต่อ';
			case 'common.alert.info.doubleTapExit': return 'กดอีกครั้งเพื่อออกจากแอป';
			case 'auth.title.enterPin': return 'กรุณาใส่ PIN';
			case 'auth.button.signInWithGoogle': return 'Sign in with Google';
			case 'auth.button.signInWithTwitter': return 'Sign in with Twitter';
			case 'auth.button.signInWithFacebook': return 'Sign in with Facebook';
			case 'auth.button.signInWithApple': return 'Sign in with Apple';
			case 'auth.button.signInWithGithub': return 'Sign in with GitHub';
			case 'auth.button.signInWithMicrosoft': return 'Sign in with Microsoft';
			case 'auth.button.termsOfService': return 'Terms of Service';
			case 'auth.button.privacyPolicy': return 'Privacy Policy';
			case 'auth.button.requestOtp': return 'ขอรหัส OTP';
			case 'auth.button.requestAgain': return ({required Object counter}) => 'ส่งรหัสอีกครั้ง (${counter})';
			case 'auth.fail.wrongOtp': return 'รหัสไม่ถูกต้อง กรุณาใส่รหัสอีกครั้ง';
			default: return null;
		}
	}
}

