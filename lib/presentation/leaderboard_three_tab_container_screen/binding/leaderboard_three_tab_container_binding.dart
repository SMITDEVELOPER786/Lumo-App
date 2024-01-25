import '../controller/leaderboard_three_tab_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the LeaderboardThreeTabContainerScreen.
///
/// This class ensures that the LeaderboardThreeTabContainerController is created when the
/// LeaderboardThreeTabContainerScreen is first loaded.
class LeaderboardThreeTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LeaderboardThreeTabContainerController());
  }
}
