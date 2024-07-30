import 'package:pigeon/pigeon.dart';

class PigeonUserDetails {
  String? uid;
  String? email;
}

@HostApi()
abstract class FirebaseAuthApi {
  PigeonUserDetails signInWithCredential( credential);
}
