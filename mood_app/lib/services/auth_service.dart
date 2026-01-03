import 'package:firebase_auth/firebase_auth.dart';

// signing in as anonymous user for now 
class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // Sign in anonymously
  Future<User?> signInAnonymously() async {
    try {
      UserCredential result = await _auth.signInAnonymously();
      User? user = result.user;
      return user;
    } catch (e) {
      
      return null;
    }
  }

  // Sign out
  Future<void> signOut() async {
    try {
      return await _auth.signOut();
    } catch (e) {
      return;
    }
  }

  // Add this getter to expose the current user
  User? get currentUser => _auth.currentUser;
}