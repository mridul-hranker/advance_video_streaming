
import 'advance_video_streaming_platform_interface.dart';

class AdvanceVideoStreaming {
  Future<String?> getPlatformVersion() {
    return AdvanceVideoStreamingPlatform.instance.getPlatformVersion();
  }
}
