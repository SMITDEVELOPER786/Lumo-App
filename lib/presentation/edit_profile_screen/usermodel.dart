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
  bool? isReseller;
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
  ProfileId? profileId;

  Data(
      {this.isReseller,
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
      this.profileId});

  Data.fromJson(Map<String, dynamic> json) {
    isReseller = json['isReseller'];
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
    profileId = json['ProfileId'] != null
        ? new ProfileId.fromJson(json['ProfileId'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['isReseller'] = this.isReseller;
    data['_id'] = this.sId;
    data['email'] = this.email;
    data['password'] = this.password;
    data['otp'] = this.otp;
    data['isVerify'] = this.isVerify;
    data['isBan'] = this.isBan;
    data['isLevel'] = this.isLevel;
    data['isCompleteProfile'] = this.isCompleteProfile;
    data['Id'] = this.id;
    data['country'] = this.country;
    data['__v'] = this.iV;
    if (this.profileId != null) {
      data['ProfileId'] = this.profileId!.toJson();
    }
    return data;
  }
}

class ProfileId {
  List<Null>? followers;
  List<Null>? following;
  List<Null>? friends;
  List<Null>? visitors;
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
  Null? banDuration;

  ProfileId(
      {this.followers,
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
      this.banDuration});

  ProfileId.fromJson(Map<String, dynamic> json) {
    if (json['followers'] != null) {
      followers = <Null>[];
      json['followers'].forEach((v) {
        // followers!.add(new Null.fromJson(v));
      });
    }
    if (json['following'] != null) {
      following = <Null>[];
      json['following'].forEach((v) {
        // following!.add(new Null.fromJson(v));
      });
    }
    if (json['friends'] != null) {
      friends = <Null>[];
      json['friends'].forEach((v) {
        // friends!.add(new Null.fromJson(v));
      });
    }
    if (json['visitors'] != null) {
      visitors = <Null>[];
      json['visitors'].forEach((v) {
        // visitors!.add(new Null.fromJson(v));
      });
    }
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
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.followers != null) {
      // data['followers'] = this.followers!.map((v) => v.toJson()).toList();
    }
    if (this.following != null) {
      // data['following'] = this.following!.map((v) => v.toJson()).toList();
    }
    if (this.friends != null) {
      // data['friends'] = this.friends!.map((v) => v.toJson()).toList();
    }
    if (this.visitors != null) {
      // data['visitors'] = this.visitors!.map((v) => v.toJson()).toList();
    }
    data['_id'] = this.sId;
    data['username'] = this.username;
    data['dateOfBirth'] = this.dateOfBirth;
    data['gender'] = this.gender;
    data['profileImage'] = this.profileImage;
    data['favBroadcaster'] = this.favBroadcaster;
    data['diamonds'] = this.diamonds;
    data['authId'] = this.authId;
    data['isBlocked'] = this.isBlocked;
    data['isBan'] = this.isBan;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['__v'] = this.iV;
    data['banDuration'] = this.banDuration;
    return data;
  }
}
