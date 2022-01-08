import 'package:audioplayers/audioplayers.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  var isTrue = true.obs;
  var isSelected = [true, false];
  List<bool> get isSelect => isSelected;

  var _tabIndex = 0.obs;
  int get tabIndex => _tabIndex.value;
  setTabIndex(int a) {
    _tabIndex.value = a;
  }

  var _homeTabIndex = 0.obs;
  int get homeTabIndex => _homeTabIndex.value;
  setHomeTabIndex(int a) {
    _homeTabIndex.value = a;
  }

  //Player setting
  AudioPlayer audioPlayer = AudioPlayer();

  var _duration = Duration().obs;
  Duration get duration => _duration.value;
  setDuration(Duration du) {
    _duration.value = du;
  }

  var _position = Duration().obs;
  Duration get position => _position.value;
  setPosition(Duration du) {
    _position.value = du;
  }

  var _isPlaying = false.obs;
  bool get isPlaying => _isPlaying.value;
  setPlaying(bool val) {
    _isPlaying.value = val;
  }

  getAudio() async {
    var url =
        "http://commondatastorage.googleapis.com/codeskulptor-demos/DDR_assets/Sevish_-__nbsp_.mp3";
    if (_isPlaying.value) {
      var res = await audioPlayer.pause();
      _isPlaying.value = false;
    } else {
      var res = await audioPlayer.play(url, isLocal: true);
      if (res == 1) {
        _isPlaying.value = true;
      }
    }
    audioPlayer.onDurationChanged.listen((event) {
      setDuration(event);
    });
    audioPlayer.onAudioPositionChanged.listen((event) {
      setPosition(event);
    });
  }

  @override
  // TODO: implement onDelete

  @override
  void onClose() {
    // TODO: implement onClose

    super.onClose();
  }
}
