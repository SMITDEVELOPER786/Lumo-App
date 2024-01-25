import '../../../core/app_export.dart';import 'userprofile10_item_model.dart';import 'userprofile11_item_model.dart';/// This class defines the variables used in the [withdrawal_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class WithdrawalModel {Rx<List<Userprofile10ItemModel>> userprofile10ItemList = Rx([Userprofile10ItemModel(diamondImage:ImageConstant.imgCurrencyeth.obs,convertText: "Convert diamonds".obs),Userprofile10ItemModel(diamondImage:ImageConstant.imgVuesaxLinearRefreshCircle.obs,convertText: "Exchange diamonds".obs)]);

Rx<List<Userprofile11ItemModel>> userprofile11ItemList = Rx([Userprofile11ItemModel(withdrewText: "You withdrew".obs,amountText: "#20,304".obs,timestampText: "15-03-2023 08:48 am".obs,amountText1: "20,304".obs,statusText: "Completed".obs),Userprofile11ItemModel(withdrewText: "You withdrew".obs,amountText: "#20,304".obs,timestampText: "15-03-2023 08:48 am".obs,amountText1: "120,000".obs,statusText: "Completed".obs),Userprofile11ItemModel(withdrewText: "You withdrew".obs,amountText: "#20,304".obs,timestampText: "15-03-2023 08:48 am".obs,amountText1: "10,000".obs,statusText: "Completed".obs),Userprofile11ItemModel(withdrewText: "You withdrew".obs,amountText: "#20,304".obs,timestampText: "15-03-2023 08:48 am".obs,amountText1: "10,000".obs,statusText: "Pending".obs)]);

 }
