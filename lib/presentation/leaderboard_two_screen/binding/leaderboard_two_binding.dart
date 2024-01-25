import '../controller/leaderboard_two_controller.dart';
import 'package:get/get.dart';

/// A binding class for the LeaderboardTwoScreen.
///
/// This class ensures that the LeaderboardTwoController is created when the
/// LeaderboardTwoScreen is first loaded.
class LeaderboardTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LeaderboardTwoController());
  }
}
