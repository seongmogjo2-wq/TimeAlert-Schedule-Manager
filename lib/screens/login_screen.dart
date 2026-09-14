import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:timealert_schedule_manager/core/constants/app_colors.dart';
import 'package:timealert_schedule_manager/core/widgets/app_text_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController name = TextEditingController();
    TextEditingController email = TextEditingController();
    TextEditingController pass = TextEditingController();

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Center(
          child: Container(
            height: 500,
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
                    SizedBox(height: 5),
                    Input(controller: name, label: '사용자 이름', hint: '이름을 입력하시오'),
                    SizedBox(height: 5),
                    Input(controller: email, label: '이메일', hint: '이메일을 입력하시오'),
                    SizedBox(height: 5),
                    Input(controller: pass, label: '비밀번호', hint: '비밀번호를 입력하시오'),
                    SizedBox(height: 13),
                    SizedBox(
                      height: 40,
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () => context.go('/alam'),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          backgroundColor: AppColors.greyButton,
                        ),
                        child: Text(
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