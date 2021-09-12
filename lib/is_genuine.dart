import 'dart:async';

import 'package:flutter/services.dart';

class IsGenuine {
  static const MethodChannel _channel = MethodChannel('is_genuine');

  static Future<bool?> isGenuine() async {
    final bool? isGenuine = await _channel.invokeMethod<bool>('isGenuine');
    return isGenuine;
  }
}
