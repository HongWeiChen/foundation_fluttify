import 'package:foundation_fluttify/src/object/obejcts.dart';
import 'package:foundation_fluttify/src/type/platform/android_type/java/lang/object.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class android_os_Bundle extends java_lang_Object {
  static Future<android_os_Bundle> create() async {
    final refId =
        await kMethodChannel.invokeMethod('android.os.Bundle::create');
    return android_os_Bundle()
      ..refId = refId
      ..tag__ = 'platform';
  }

  Future<void> putString(String key, String value) async {
    await kMethodChannel.invokeMethod('android.os.Bundle::putString', {
      'refId': refId,
      'key': key,
      'value': value,
    });
  }

  Future<String> getString(String key) async {
    await kMethodChannel.invokeMethod(
      'android.os.Bundle::getString',
      {'refId': refId, 'key': key},
    );
  }
}
