import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:is_genuine/is_genuine.dart';

void main() {
  const MethodChannel channel = MethodChannel('is_genuine');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await IsGenuine.platformVersion, '42');
  });
}
