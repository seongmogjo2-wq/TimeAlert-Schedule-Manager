import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:timealert_schedule_manager/core/constants/app_colors.dart';
import 'package:timealert_schedule_manager/core/widgets/app_text_field.dart';
import '../features/auth/user_provider.dart';

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});

  @override
  ConsumerState<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  late final TextEditingController nameController;
  late final TextEditingController emailController;
  late final TextEditingController passController;

  @override
  void initState() {
    super.initState();
    nameController = TextEditingController();
    emailController = TextEditingController();
    passController = TextEditingController();
  }

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    passController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final authState = ref.watch(authProvider);

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Center(
          child: Container(
            height: 520,
            padding: EdgeInsets.all(16),
            width: double.infinity,
            decoration: BoxDecoration(
              color: AppColors.surface,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Column(
                    children: [
                      CircleAvatar(
                        backgroundColor: AppColors.primary,
                        child: Icon(
                          Icons.watch_later_outlined,
                          color: AppColors.surface,
                          size: 25,
                        ),
                      ),
                      Text(
                        '시간표 알림 앱',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          color: AppColors.textPrimary,
                        ),
                      ),
                      Text(
                        '시간표에 따라서 알림을 올려줍니다.',
                        style: TextStyle(
                          fontSize: 15,
                          color: AppColors.textLightSecondary,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Input(
                      controller: nameController,
                      label: '사용자 이름',
                      hint: '이름을 입력하시오',
                    ),
                    SizedBox(height: 5),
                    Input(
                      controller: emailController,
                      label: '이메일',
                      hint: 'hong@gmail.com',
                    ),
                    SizedBox(height: 5),
                    Input(
                      controller: passController,
                      label: '비밀번호',
                      hint: '1234',
                    ),
                    if (authState.errorMessage != null) ...[
                       SizedBox(height: 8),
                      Text(
                        authState.errorMessage!,
                        style:  TextStyle(color: Colors.red, fontSize: 13),
                      ),
                    ],
                     SizedBox(height: 13),
                    SizedBox(
                      height: 40,
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          final success = ref
                              .read(authProvider.notifier)
                              .login(
                                nameController.text.trim(),
                                emailController.text.trim(),
                                passController.text.trim(),
                              );
                          if (success) {
                            context.go('/alam');
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          backgroundColor: AppColors.greyButton,
                        ),
                        child:  Text(
                          '확인',
                          style: TextStyle(
                            color: AppColors.surface,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}