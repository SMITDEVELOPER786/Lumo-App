import '../../../core/app_export.dart';import 'userprofile7_item_model.dart';import 'userprofile8_item_model.dart';/// This class defines the variables used in the [my_wallet_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class MyWalletModel {Rx<List<Userprofile7ItemModel>> userprofile7ItemList = Rx([Userprofile7ItemModel(userImage:ImageConstant.imgEllipse471.obs,userName: "Ralph Edwards".obs,userID: "ID: 2363830".obs),Userprofile7ItemModel(userImage:ImageConstant.imgEllipse47148x48.obs,userName: "Coin Seller".obs,userID: "ID: 2363830".obs)]);

Rx<List<Userprofile8ItemModel>> userprofile8ItemList = Rx([Userprofile8ItemModel(userImage:ImageConstant.imgMaskGroup79x171.obs,text5000: "5000".obs,textUSD100: "USD 100".obs),Userprofile8ItemModel(userImage:ImageConstant.imgMaskGroupLime20001.obs,text5000: "1500".obs,textUSD100: "USD 130".obs),Userprofile8ItemModel(userImage:ImageConstant.imgMaskGroup79x171.obs,text5000: "30500".obs,textUSD100: "USD 100".obs),Userprofile8ItemModel(userImage:ImageConstant.imgMaskGroup79x171.obs,text5000: "30500".obs,textUSD100: "USD 100".obs),Userprofile8ItemModel(userImage:ImageConstant.imgMaskGroupLime20001.obs,text5000: "1000".obs,textUSD100: "USD 130".obs),Userprofile8ItemModel(text5000: "1000".obs,textUSD100: "USD 130".obs)]);

 }
