import 'package:qclay/domain/dto/response/user_response.dart';

class Users {
  Users({
    required this.id,
    required this.name,
    required this.image,
  });
  int id;
  String name;
  String image;

  factory Users.fromResponse(UserResponse response) =>Users(id: response.id, name: response.name, image: response.image);
}
