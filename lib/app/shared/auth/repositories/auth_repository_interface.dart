import 'package:firebase_auth/firebase_auth.dart';

abstract class IAuthRepository {
  Future getUser();
  Future<FirebaseUser> getGoogleLogin();
  Future getEmailPasswordLogin();

  Future<String> getToken();
}
