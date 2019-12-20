import 'dart:typed_data';

import 'package:foundation_fluttify/foundation_fluttify.dart';

import '../../../constants.dart';

class NSData extends NSObject {
  static Future<NSData> createWithUint8List(Uint8List data) async {
    final refId = await kMethodChannel.invokeMethod(
        'PlatformFactory::createNSDataWithUint8List', {'data': data});
    return NSData()
      ..refId = refId
      ..tag = 'platform';
  }
}
