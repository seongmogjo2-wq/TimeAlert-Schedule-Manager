import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:timealert_schedule_manager/core/constants/app_colors.dart';
import '../core/widgets/app_button.dart';
import '../features/auth/user_provider.dart';

class SetScreen extends ConsumerWidget {
  const SetScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userProfile = ref.watch(userProfileProvider);

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppButton(
                width: 40,
                height: 40,
                padding: EdgeInsets.zero,
                onPressed: () => context.go('/alam'),
                child: Center(
                  child: Icon(
                    Icons.arrow_back,
                    size: 18,
                    color: AppColors.textPrimary,
                  ),
                ),
              ),
              SizedBox(height: 16),
              Text(
                '설정',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: AppColors.textPrimary,
                ),
              ),
              Text(
                '알림 설정 및 전체 설정',
                style: TextStyle(
                  fontSize: 13,
                  color: AppColors.textSecondary,
                ),
              ),
              SizedBox(height: 20),
              AppButton(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 22,
                          backgroundColor: AppColors.background,
                          child: Icon(Icons.person, color: AppColors.darkButton),
                        ),
                        SizedBox(width: 14),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              userProfile.name,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: AppColors.textPrimary,
                              ),
                            ),
                            Text(
                              userProfile.email,
                              style: TextStyle(
                                fontSize: 13,
                                color: AppColors.textSecondary,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Divider(height: 30, color: AppColors.border),
                    SwitchListTile(
                      contentPadding: EdgeInsets.zero,
                      title: Text(
                        '전체 알림 활성화',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: AppColors.textPrimary,
                        ),
                      ),
                      activeThumbColor: AppColors.darkButton,
                      value: true,
                      onChanged: (val) {},
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}