import 'package:flutter_test/flutter_test.dart';
import 'package:advance_video_streaming/advance_video_streaming.dart';
import 'package:advance_video_streaming/advance_video_streaming_platform_interface.dart';
import 'package:advance_video_streaming/advance_video_streaming_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockAdvanceVideoStreamingPlatform
    with MockPlatformInterfaceMixin
    implements AdvanceVideoStreamingPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final AdvanceVideoStreamingPlatform initialPlatform = AdvanceVideoStreamingPlatform.instance;

  test('$MethodChannelAdvanceVideoStreaming is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelAdvanceVideoStreaming>());
  });

  test('getPlatformVersion', () async {
    AdvanceVideoStreaming advanceVideoStreamingPlugin = AdvanceVideoStreaming();
    MockAdvanceVideoStreamingPlatform fakePlatform = MockAdvanceVideoStreamingPlatform();
    AdvanceVideoStreamingPlatform.instance = fakePlatform;

    expect(await advanceVideoStreamingPlugin.getPlatformVersion(), '42');
  });
}
