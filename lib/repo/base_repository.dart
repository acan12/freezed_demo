import '../data/model/response/user/user_response.dart';

abstract class BaseRepository {
  Future<UserResponse> getPersona();
}