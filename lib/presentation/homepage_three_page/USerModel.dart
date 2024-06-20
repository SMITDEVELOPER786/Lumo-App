class UserModel {
  String? message;
  Data? data;
  String? token;

  UserModel({this.message, this.data, this.token});

  UserModel.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['message'] = message;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    data['token'] = token;
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
  String? country;
  int? iV;
  bool? isReseller;
  ProfileId? profileId;

  Data({
    this.sId,
    this.email,
    this.password,
    this.otp,
    this.isVerify,
    this.isBan,
    this.isLevel,
    this.isCompleteProfile,
    this.id,
    this.country,
    this.iV,
    this.isReseller,
    this.profileId,
  });

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
    country = json['country'];
    iV = json['__v'];
    isReseller = json['isReseller'];
    profileId = json['ProfileId'] != null ? ProfileId.fromJson(json['ProfileId']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['_id'] = sId;
    data['email'] = email;
    data['password'] = password;
    data['otp'] = otp;
    data['isVerify'] = isVerify;
    data['isBan'] = isBan;
    data['isLevel'] = isLevel;
    data['isCompleteProfile'] = isCompleteProfile;
    data['Id'] = id;
    data['country'] = country;
    data['__v'] = iV;
    data['isReseller'] = isReseller;
    if (profileId != null) {
      data['ProfileId'] = profileId!.toJson();
    }
    return data;
  }
}

class ProfileId {
  List<String>? followers;
  List<String>? following;
  List<String>? friends;
  List<String>? visitors;
  String? sId;
  String? username;
  String? dateOfBirth;
  String? gender;
  String? profileImage;
  String? favBroadcaster;
  int? diamonds;
  String? authId;
  bool? isBlocked;
  bool? isBan;
  String? createdAt;
  String? updatedAt;
  int? iV;
  String? banDuration;

  ProfileId({
    this.followers,
    this.following,
    this.friends,
    this.visitors,
    this.sId,
    this.username,
    this.dateOfBirth,
    this.gender,
    this.profileImage,
    this.favBroadcaster,
    this.diamonds,
    this.authId,
    this.isBlocked,
    this.isBan,
    this.createdAt,
    this.updatedAt,
    this.iV,
    this.banDuration,
  });

  ProfileId.fromJson(Map<String, dynamic> json) {
    followers = List<String>.from(json['followers']);
    following = List<String>.from(json['following']);
    friends = List<String>.from(json['friends']);
    visitors = List<String>.from(json['visitors']);
    sId = json['_id'];
    username = json['username'];
    dateOfBirth = json['dateOfBirth'];
    gender = json['gender'];
    profileImage = json['profileImage'];
    favBroadcaster = json['favBroadcaster'];
    diamonds = json['diamonds'];
    authId = json['authId'];
    isBlocked = json['isBlocked'];
    isBan = json['isBan'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    iV = json['__v'];
    banDuration = json['banDuration'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['followers'] = followers;
    data['following'] = following;
    data['friends'] = friends;
    data['visitors'] = visitors;
    data['_id'] = sId;
    data['username'] = username;
    data['dateOfBirth'] = dateOfBirth;
    data['gender'] = gender;
    data['profileImage'] = profileImage;
    data['favBroadcaster'] = favBroadcaster;
    data['diamonds'] = diamonds;
    data['authId'] = authId;
    data['isBlocked'] = isBlocked;
    data['isBan'] = isBan;
    data['createdAt'] = createdAt;
    data['updatedAt'] = updatedAt;
    data['__v'] = iV;
    data['banDuration'] = banDuration;
    return data;
  }
}
