import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'supabase_helper.dart';

class SupabaseAuthService {
  static User? get currentUser => SupabaseHelper.client.auth.currentUser;
  static Session? get currentSession => SupabaseHelper.client.auth.currentSession;

  static Future<void> signInAnonymously() async {
    try {
      if (currentSession == null) {
        await SupabaseHelper.client.auth.signInAnonymously();
      }
    } catch (e) {
      print("SupabaseAuth: Anonymous Sign-in Failed: $e");
    }
  }

  /// Google Login (Native & Web)
  /// v15.0: For permanent account persistence and data recovery after re-installation.
  static Future<AuthResponse?> signInWithGoogle() async {
    try {
      // 1. Configure Google Sign In
      // Client IDs should be provided by the user in .env
      // webClientId and iosClientId are currently configured in Supabase Console
      // and google-services.json for native signIn() to work.

      final dynamic googleClient = GoogleSignIn();
      
      final googleUser = await googleClient.signIn();
      if (googleUser == null) return null; // Cancelled

      final googleAuth = await googleUser.authentication;
      final accessToken = googleAuth.accessToken;
      final idToken = googleAuth.idToken;

      if (idToken == null) {
        throw 'No ID Token found from Google Sign-In.';
      }

      // 2. Sign in to Supabase with the ID Token
      final dynamic auth = Supabase.instance.client.auth;
      return await auth.signInWithIdToken(
        provider: OAuthProvider.google,
        idToken: idToken,
        accessToken: accessToken,
      );
    } catch (e) {
      print("SupabaseAuth: Google Sign-in Error: $e");
      rethrow;
    }
  }

  static Future<void> signOut() async {
    await SupabaseHelper.client.auth.signOut();
  }
}
