import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:timealert_schedule_manager/core/constants/app_colors.dart';
import 'package:timealert_schedule_manager/core/widgets/app_button.dart';
import 'package:timealert_schedule_manager/core/widgets/app_text_field.dart';

class AddScheduleScreen extends StatelessWidget {
  const AddScheduleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController name = TextEditingController();
    TextEditingController start = TextEditingController();
    TextEditingController end = TextEditingController();

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppButton(
              width: 100,
              height: 40,
              padding: EdgeInsets.zero,
              onPressed: () => context.go('/alam'),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.arrow_back, size: 15, color: AppColors.textPrimary),
                    SizedBox(width: 10),
                    Text(
                      '돌아가기',
                      style: TextStyle(color: AppColors.textPrimary, fontSize: 15),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 8),
            Text(
              '일정 추가',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25, color: AppColors.textPrimary),
            ),
            SizedBox(height: 4),
            Text(
              '일정추가 및 설정',
              style: TextStyle(color: AppColors.textLightSecondary),
            ),
            SizedBox(height: 8),
            AppButton(
              height: 125,
              width: double.infinity,
              child: Center(
                child: Input(
                  controller: name,
                  label: '일정이름',
                  hint: '일정의 이름을 입력하시오',
                  icon: Icons.schedule,
                ),
              ),
            ),
            SizedBox(height: 8),
            AppButton(
              height: 200,
              width: double.infinity,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Input(
                      controller: start,
                      label: '시작일자',
                      hint: '연도-월-일',
                      icon: Icons.calendar_month,
                    ),
                    SizedBox(height: 16),
                    Input(
                      controller: end,
                      label: '끝남 일자',
                      hint: '연도-월-일',
                      icon: Icons.calendar_month,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 8),
            AppButton(
              height: 75,
              width: double.infinity,
              child: Center(
                child: SwitchListTile(
                  contentPadding: EdgeInsets.zero,
                  title: Text(
                    '알림 활성화',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: AppColors.textPrimary),
                  ),
                  activeThumbColor: AppColors.darkButton,
                  value: true,
                  onChanged: (val) {},
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}