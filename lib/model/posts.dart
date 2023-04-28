// class PostModel {
//   String? id;
//   String? postImage;
//   String? userId;
//   DateTime? createdAt;
//   DateTime? updatedAt;

//   PostModel(
//       {this.id, this.postImage, this.userId, this.createdAt, this.updatedAt});

//   factory PostModel.fromJson(Map<String, dynamic> json) {
//     return PostModel(
//       id: json['_id'],
//       postImage: json['postImage'],
//       userId: json['userId'],
//       createdAt: DateTime.parse(json['createdAt']),
//       updatedAt: DateTime.parse(json['updatedAt']),
//     );
//   }
//   @override
//   String toString() {
//     return 'Post{id: $id, postImage: $postImage, userId: $userId, createdAt: $createdAt, updatedAt: $updatedAt}';
//   }
// }

class postModel {
  String? sId;
  String? postImage;
  UserId? userId;
  String? createdAt;
  String? updatedAt;
  int? iV;

  postModel(
      {this.sId,
      this.postImage,
      this.userId,
      this.createdAt,
      this.updatedAt,
      this.iV});

  postModel.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    postImage = json['postImage'];
    userId = json['userId'] != null ? UserId.fromJson(json['userId']) : null;
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['_id'] = sId;
    data['postImage'] = postImage;
    if (userId != null) {
      data['userId'] = userId!.toJson();
    }
    data['createdAt'] = createdAt;
    data['updatedAt'] = updatedAt;
    data['__v'] = iV;
    return data;
  }
}

class UserId {
  String? sId;
  String? name;
  String? lastName;
  String? email;
  String? password;
  String? profilePhoto;
  String? createdAt;
  String? updatedAt;
  int? iV;

  UserId(
      {this.sId,
      this.name,
      this.lastName,
      this.email,
      this.password,
      this.profilePhoto,
      this.createdAt,
      this.updatedAt,
      this.iV});

  UserId.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    name = json['name'];
    lastName = json['lastName'];
    email = json['email'];
    password = json['password'];
    profilePhoto = json['profilePhoto'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['_id'] = sId;
    data['name'] = name;
    data['lastName'] = lastName;
    data['email'] = email;
    data['password'] = password;
    data['profilePhoto'] = profilePhoto;
    data['createdAt'] = createdAt;
    data['updatedAt'] = updatedAt;
    data['__v'] = iV;
    return data;
  }
}
