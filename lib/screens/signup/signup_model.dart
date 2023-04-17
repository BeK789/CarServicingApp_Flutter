class SignUpModel {
  String? id;
  String? name;
  String? password;
  Null? profile;
  Phone? phone;
  Email? email;
  // List<Null>? carTypes;

  SignUpModel({
    this.id,
    this.name,
    this.password,
    this.profile,
    this.phone,
    this.email,
    // this.carTypes
  });

  SignUpModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    password = json['password'];
    profile = json['profile'];
    phone = json['phone'] != null ? Phone.fromJson(json['phone']) : null;
    email = json['email'] != null ? Email.fromJson(json['email']) : null;
    //  if (json['carTypes'] != null) {
    //   carTypes = <Null>[];
    //    json['carTypes'].forEach((v) {
    //     carTypes!.add(Null.fromJson(v));
    //   });
    // }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['password'] = password;
    data['profile'] = profile;
    if (phone != null) {
      data['phone'] = phone!.toJson();
    }
    if (email != null) {
      data['email'] = email!.toJson();
    }
    // if (carTypes != null) {
    //   data['carTypes'] = carTypes!.map((v) => v.toJson()).toList();
    // }
    return data;
  }
}

class Phone {
  String? id;
  String? phone;
  bool? isVerify;

  Phone({this.id, this.phone, this.isVerify});

  Phone.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    phone = json['phone'];
    isVerify = json['isVerify'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['phone'] = phone;
    data['isVerify'] = isVerify;
    return data;
  }
}

class Email {
  String? id;
  String? email;
  bool? isVerify;

  Email({this.id, this.email, this.isVerify});

  Email.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    email = json['email'];
    isVerify = json['isVerify'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['email'] = email;
    data['isVerify'] = isVerify;
    return data;
  }
}
