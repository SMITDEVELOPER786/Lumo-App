class UserModel {
  String? message;
  Data? data;
  String? token;

  UserModel({this.message, this.data, this.token});

  UserModel.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    data['token'] = this.token;
    return data;
  }
}

class Data {
  String? sId;
  String? email;
  String? password;
  int? otp;
  bool? isVerify;
  bool? isBan;
  int? isLevel;
  bool? isCompleteProfile;
  String? id;
  int? iV;

  Data(
      {this.sId,
      this.email,
      this.password,
      this.otp,
      this.isVerify,
      this.isBan,
      this.isLevel,
      this.isCompleteProfile,
      this.id,
      this.iV});

  Data.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    email = json['email'];
    password = json['password'];
    otp = json['otp'];
    isVerify = json['isVerify'];
    isBan = json['isBan'];
    isLevel = json['isLevel'];
    isCompleteProfile = json['isCompleteProfile'];
    id = json['Id'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['email'] = this.email;
    data['password'] = this.password;
    data['otp'] = this.otp;
    data['isVerify'] = this.isVerify;
    data['isBan'] = this.isBan;
    data['isLevel'] = this.isLevel;
    data['isCompleteProfile'] = this.isCompleteProfile;
    data['Id'] = this.id;
    data['__v'] = this.iV;
    return data;
  }
}
