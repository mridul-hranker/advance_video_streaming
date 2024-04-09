import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'advance_video_streaming_method_channel.dart';

abstract class AdvanceVideoStreamingPlatform extends PlatformInterface {
  /// Constructs a AdvanceVideoStreamingPlatform.
  AdvanceVideoStreamingPlatform() : super(token: _token);

  static final Object _token = Object();

  static AdvanceVideoStreamingPlatform _instance = MethodChannelAdvanceVideoStreaming();

  /// The default instance of [AdvanceVideoStreamingPlatform] to use.
  ///
  /// Defaults to [MethodChannelAdvanceVideoStreaming].
  static AdvanceVideoStreamingPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [AdvanceVideoStreamingPlatform] when
  /// they register themselves.
  static set instance(AdvanceVideoStreamingPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
