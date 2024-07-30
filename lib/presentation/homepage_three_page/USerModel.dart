// class UserModel {
//   String? message;
//   Data? data;
//   String? token;

//   UserModel({this.message, this.data, this.token});

//   UserModel.fromJson(Map<String, dynamic> json) {
//     message = json['message'];
//     data = json['data'] != null ? Data.fromJson(json['data']) : null;
//     token = json['token'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['message'] = message;
//     if (this.data != null) {
//       data['data'] = this.data!.toJson();
//     }
//     data['token'] = token;
//     return data;
//   }
// }

// class Data {
//   String? sId;
//   String? email;
//   String? password;
//   int? otp;
//   bool? isVerify;
//   bool? isBan;
//   int? isLevel;
//   bool? isCompleteProfile;
//   String? id;
//   String? country;
//   int? iV;
//   bool? isReseller;
//   ProfileId? profileId;

//   Data({
//     this.sId,
//     this.email,
//     this.password,
//     this.otp,
//     this.isVerify,
//     this.isBan,
//     this.isLevel,
//     this.isCompleteProfile,
//     this.id,
//     this.country,
//     this.iV,
//     this.isReseller,
//     this.profileId,
//   });

//   Data.fromJson(Map<String, dynamic> json) {
//     sId = json['_id'];
//     email = json['email'];
//     password = json['password'];
//     otp = json['otp'];
//     isVerify = json['isVerify'];
//     isBan = json['isBan'];
//     isLevel = json['isLevel'];
//     isCompleteProfile = json['isCompleteProfile'];
//     id = json['Id'];
//     country = json['country'];
//     iV = json['__v'];
//     isReseller = json['isReseller'];
//     profileId = json['ProfileId'] != null ? ProfileId.fromJson(json['ProfileId']) : null;
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['_id'] = sId;
//     data['email'] = email;
//     data['password'] = password;
//     data['otp'] = otp;
//     data['isVerify'] = isVerify;
//     data['isBan'] = isBan;
//     data['isLevel'] = isLevel;
//     data['isCompleteProfile'] = isCompleteProfile;
//     data['Id'] = id;
//     data['country'] = country;
//     data['__v'] = iV;
//     data['isReseller'] = isReseller;
//     if (profileId != null) {
//       data['ProfileId'] = profileId!.toJson();
//     }
//     return data;
//   }
// }

// class ProfileId {
//   List<String>? followers;
//   List<String>? following;
//   List<String>? friends;
//   List<String>? visitors;
//   String? sId;
//   String? username;
//   String? dateOfBirth;
//   String? gender;
//   String? profileImage;
//   String? favBroadcaster;
//   int? diamonds;
//   String? authId;
//   bool? isBlocked;
//   bool? isBan;
//   String? createdAt;
//   String? updatedAt;
//   int? iV;
//   String? banDuration;

//   ProfileId({
//     this.followers,
//     this.following,
//     this.friends,
//     this.visitors,
//     this.sId,
//     this.username,
//     this.dateOfBirth,
//     this.gender,
//     this.profileImage,
//     this.favBroadcaster,
//     this.diamonds,
//     this.authId,
//     this.isBlocked,
//     this.isBan,
//     this.createdAt,
//     this.updatedAt,
//     this.iV,
//     this.banDuration,
//   });

//   ProfileId.fromJson(Map<String, dynamic> json) {
//     followers = List<String>.from(json['followers']);
//     following = List<String>.from(json['following']);
//     friends = List<String>.from(json['friends']);
//     visitors = List<String>.from(json['visitors']);
//     sId = json['_id'];
//     username = json['username'];
//     dateOfBirth = json['dateOfBirth'];
//     gender = json['gender'];
//     profileImage = json['profileImage'];
//     favBroadcaster = json['favBroadcaster'];
//     diamonds = json['diamonds'];
//     authId = json['authId'];
//     isBlocked = json['isBlocked'];
//     isBan = json['isBan'];
//     createdAt = json['createdAt'];
//     updatedAt = json['updatedAt'];
//     iV = json['__v'];
//     banDuration = json['banDuration'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['followers'] = followers;
//     data['following'] = following;
//     data['friends'] = friends;
//     data['visitors'] = visitors;
//     data['_id'] = sId;
//     data['username'] = username;
//     data['dateOfBirth'] = dateOfBirth;
//     data['gender'] = gender;
//     data['profileImage'] = profileImage;
//     data['favBroadcaster'] = favBroadcaster;
//     data['diamonds'] = diamonds;
//     data['authId'] = authId;
//     data['isBlocked'] = isBlocked;
//     data['isBan'] = isBan;
//     data['createdAt'] = createdAt;
//     data['updatedAt'] = updatedAt;
//     data['__v'] = iV;
//     data['banDuration'] = banDuration;
//     return data;
//   }
// }


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
  String? country;
  bool? isReseller;
  int? iV;
  ProfileId? profileId;
  Coins? coins;

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
      this.country,
      this.isReseller,
      this.iV,
      this.profileId,
      this.coins});

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
    isReseller = json['isReseller'];
    iV = json['__v'];
    profileId = json['ProfileId'] != null
        ? new ProfileId.fromJson(json['ProfileId'])
        : null;
    coins = json['coins'] != null ? new Coins.fromJson(json['coins']) : null;
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
    data['country'] = this.country;
    data['isReseller'] = this.isReseller;
    data['__v'] = this.iV;
    if (this.profileId != null) {
      data['ProfileId'] = this.profileId!.toJson();
    }
    if (this.coins != null) {
      data['coins'] = this.coins!.toJson();
    }
    return data;
  }
}

class ProfileId {
  String? sId;
  String? username;
  String? dateOfBirth;
  String? gender;
  String? profileImage;
  String? favBroadcaster;
  int? diamonds;
  String? authId;
  List<Null>? followers;
  List<Null>? following;
  List<Null>? friends;
  List<Null>? visitors;
  bool? isBlocked;
  bool? isBan;
  String? createdAt;
  String? updatedAt;
  int? iV;
  String? bio;
  String? descSelf;
  String? language;

  ProfileId(
      {this.sId,
      this.username,
      this.dateOfBirth,
      this.gender,
      this.profileImage,
      this.favBroadcaster,
      this.diamonds,
      this.authId,
      this.followers,
      this.following,
      this.friends,
      this.visitors,
      this.isBlocked,
      this.isBan,
      this.createdAt,
      this.updatedAt,
      this.iV,
      this.bio,
      this.descSelf,
      this.language});

  ProfileId.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    username = json['username'];
    dateOfBirth = json['dateOfBirth'];
    gender = json['gender'];
    profileImage = json['profileImage'];
    favBroadcaster = json['favBroadcaster'];
    diamonds = json['diamonds'];
    authId = json['authId'];
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
    isBlocked = json['isBlocked'];
    isBan = json['isBan'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    iV = json['__v'];
    bio = json['bio'];
    descSelf = json['descSelf'];
    language = json['language'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['username'] = this.username;
    data['dateOfBirth'] = this.dateOfBirth;
    data['gender'] = this.gender;
    data['profileImage'] = this.profileImage;
    data['favBroadcaster'] = this.favBroadcaster;
    data['diamonds'] = this.diamonds;
    data['authId'] = this.authId;
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
    data['isBlocked'] = this.isBlocked;
    data['isBan'] = this.isBan;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['__v'] = this.iV;
    data['bio'] = this.bio;
    data['descSelf'] = this.descSelf;
    data['language'] = this.language;
    return data;
  }
}

class Coins {
  String? sId;
  String? resellerId;
  int? coins;
  String? userId;
  int? iV;

  Coins({this.sId, this.resellerId, this.coins, this.userId, this.iV});

  Coins.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    resellerId = json['resellerId'];
    coins = json['coins'];
    userId = json['userId'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['resellerId'] = this.resellerId;
    data['coins'] = this.coins;
    data['userId'] = this.userId;
    data['__v'] = this.iV;
    return data;
  }
}
