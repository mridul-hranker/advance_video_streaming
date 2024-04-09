import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:advance_video_streaming/advance_video_streaming_method_channel.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  MethodChannelAdvanceVideoStreaming platform = MethodChannelAdvanceVideoStreaming();
  const MethodChannel channel = MethodChannel('advance_video_streaming');

  setUp(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(
      channel,
      (MethodCall methodCall) async {
        return '42';
      },
    );
  });

  tearDown(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(channel, null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
