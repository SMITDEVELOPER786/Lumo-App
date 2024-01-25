import '../controller/leaderboard_controller.dart';
import 'package:get/get.dart';

/// A binding class for the LeaderboardScreen.
///
/// This class ensures that the LeaderboardController is created when the
/// LeaderboardScreen is first loaded.
class LeaderboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LeaderboardController());
  }
}
