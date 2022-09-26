import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class BitirmeProjesiFirebaseUser {
  BitirmeProjesiFirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

BitirmeProjesiFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<BitirmeProjesiFirebaseUser> bitirmeProjesiFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<BitirmeProjesiFirebaseUser>(
            (user) => currentUser = BitirmeProjesiFirebaseUser(user));
