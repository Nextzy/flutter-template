import 'package:utils/lib.dart';

extension StringFormatExtension on String? {
  // Example
  // {
  //    "country_code": "66",
  //    "e164": "+66644639599",
  //    "national": "064 463 9599",
  //    "type": "mobile",
  //    "international": "+66 64 463 9599",
  //    "national_number": "644639599",
  //    "region_code": "TH"
  //  }

  Future<String> parseToPhoneNumberIfCan() async {
    if (this == null) return '';
    try {
      final map = await parse(this!);

      return map['e164'] as String;
    } catch (e, stacktrace) {
      Log.w(e, stackTrace: stacktrace);

      return this!;
    }
  }

  Future<String> getCountryCode() async {
    if (this == null) return '';
    final map = await parse(this!);

    return map['country_code'] as String;
  }
}
