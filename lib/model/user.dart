import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

// caml case 로 적혀있는 프로퍼티를 json으로 대응하는 프로퍼티명을 생성할때 자동으로 snake case 로 변환
@JsonSerializable(fieldRename: FieldRename.snake)
class User {
  String id;
  String profileImageUrl;

  User({required this.id, required this.profileImageUrl});

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}
