import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'user_profile.dart';

final userProfileProvider = Provider<UserProfile>((ref) {
  return const UserProfile(
    name: '홍길동',
    email: 'honggildong@gmail.com',
  );
});