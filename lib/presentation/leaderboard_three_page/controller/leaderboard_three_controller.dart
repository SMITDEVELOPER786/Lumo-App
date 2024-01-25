import 'package:muhammad_zubair_s_application4/core/app_export.dart';
import 'package:muhammad_zubair_s_application4/presentation/leaderboard_three_page/models/leaderboard_three_model.dart';

/// A controller class for the LeaderboardThreePage.
///
/// This class manages the state of the LeaderboardThreePage, including the
/// current leaderboardThreeModelObj
class LeaderboardThreeController extends GetxController {
  LeaderboardThreeController(this.leaderboardThreeModelObj);

  Rx<LeaderboardThreeModel> leaderboardThreeModelObj;
}
