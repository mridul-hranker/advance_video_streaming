import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'advance_video_streaming_platform_interface.dart';

/// An implementation of [AdvanceVideoStreamingPlatform] that uses method channels.
class MethodChannelAdvanceVideoStreaming extends AdvanceVideoStreamingPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('advance_video_streaming');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
