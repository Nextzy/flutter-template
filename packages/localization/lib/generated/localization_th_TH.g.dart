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
	TranslationsThTh({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
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
	@override late final _TranslationsCommonButtonThTh button = _TranslationsCommonButtonThTh._(_root);
	@override late final _TranslationsCommonSuccessThTh success = _TranslationsCommonSuccessThTh._(_root);
	@override late final _TranslationsCommonFailThTh fail = _TranslationsCommonFailThTh._(_root);
}

// Path: auth
class _TranslationsAuthThTh extends TranslationsAuthEnGb {
	_TranslationsAuthThTh._(TranslationsThTh root) : this._root = root, super.internal(root);

	final TranslationsThTh _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsAuthButtonThTh button = _TranslationsAuthButtonThTh._(_root);
}

// Path: common.title
class _TranslationsCommonTitleThTh extends TranslationsCommonTitleEnGb {
	_TranslationsCommonTitleThTh._(TranslationsThTh root) : this._root = root, super.internal(root);

	final TranslationsThTh _root; // ignore: unused_field

	// Translations
	@override String get confirmation => 'ยืนยัน';
	@override String get forceUpdate => 'อัพเดทเวอร์ชันใหม่';
	@override String get softUpdate => 'มีอัพเดทใหม่';
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

// Path: auth.button
class _TranslationsAuthButtonThTh extends TranslationsAuthButtonEnGb {
	_TranslationsAuthButtonThTh._(TranslationsThTh root) : this._root = root, super.internal(root);

	final TranslationsThTh _root; // ignore: unused_field

	// Translations
	@override String get signInWithGoogle => 'Sign in with Google';
	@override String get signInWithFacebook => 'Sign in with Facebook';
	@override String get signInWithApple => 'Sign in with Apple';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on TranslationsThTh {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'common.title.confirmation': return 'ยืนยัน';
			case 'common.title.forceUpdate': return 'อัพเดทเวอร์ชันใหม่';
			case 'common.title.softUpdate': return 'มีอัพเดทใหม่';
			case 'common.message.confirmationDelete': return 'คุณแน่ใจหรือไม่ที่จะลบ?';
			case 'common.message.forceUpdate': return 'มีเวอร์ชันใหม่ กรุณาอัพเดทเพื่อดำเนินการต่อ';
			case 'common.message.softUpdate': return 'มีเวอร์ชันใหม่ คุณต้องการอัพเดทเดี๋ยวนี้หรือไม่?';
			case 'common.message.noData': return 'ไม่มีข้อมูล';
			case 'common.message.processing': return 'กำลังดำเนินการ...';
			case 'common.message.loading': return 'กำลังโหลด...';
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
			case 'common.success.general': return 'สำเร็จ';
			case 'common.success.saved': return 'บันทึกสำเร็จ';
			case 'common.success.updated': return 'อัพเดทสำเร็จ';
			case 'common.success.deleted': return 'ลบสำเร็จ';
			case 'common.fail.saved': return 'บันทึกไม่สำเร็จ โปรดลองใหม่อีกครั้ง';
			case 'common.fail.general': return 'เกิดข้อผิดพลาด โปรดลองใหม่อีกครั้ง';
			case 'common.fail.updated': return 'อัพเดทไม่สำเร็จ โปรดลองใหม่อีกครั้ง';
			case 'common.fail.network': return 'ข้อผิดพลาดเครือข่าย โปรดตรวจสอบการเชื่อมต่อ';
			case 'auth.button.signInWithGoogle': return 'Sign in with Google';
			case 'auth.button.signInWithFacebook': return 'Sign in with Facebook';
			case 'auth.button.signInWithApple': return 'Sign in with Apple';
			default: return null;
		}
	}
}
