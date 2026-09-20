import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'user_profile.dart';

class AuthState {
  final UserProfile user;
  final String? errorMessage;
  final bool isAuthenticated;

  AuthState({
    required this.user,
    this.errorMessage,
    this.isAuthenticated = false,
  });
}

class AuthNotifier extends Notifier<AuthState> {
  @override
  AuthState build() => AuthState(
    user: const UserProfile(name: '홍길동', email: 'hong@gmail.com', password: '1234'),
  );

  bool login(String name, String email, String password) {
    if (email != 'hong@gmail.com' || password != '1234') {
      state = AuthState(
        user: state.user,
        errorMessage: '이메일 또는 비밀번호가 올바르지 않습니다.',
        isAuthenticated: false,
      );
      return false;
    }

    state = AuthState(
      user: UserProfile(name: name, email: email, password: password),
      errorMessage: null,
      isAuthenticated: true,
    );
    return true;
  }
}

final authProvider = NotifierProvider<AuthNotifier, AuthState>(AuthNotifier.new);

final userProfileProvider = Provider<UserProfile>((ref) {
  final auth = ref.watch(authProvider);
  return auth.user;
});