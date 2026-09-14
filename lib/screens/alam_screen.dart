import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:timealert_schedule_manager/core/widgets/app_button.dart';
import '../core/constants/app_colors.dart';
import '../widgets/schedule_card.dart';

class AlamScreen extends StatelessWidget {
  const AlamScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final schedules = [
      {'title': '플러터 프로그래밍', 'time': 'Mon 09:00 - 10:30', 'isAlarmOn': true},
      {'title': '알고리즘 및 실습', 'time': 'Wed 13:00 - 15:00', 'isAlarmOn': false},
      {'title': '소프트웨어 공학', 'time': 'Thu 10:30 - 12:00', 'isAlarmOn': true},
    ];

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '알림 화면',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: AppColors.textPrimary,
                  ),
                ),
                AppButton(
                  width: 100,
                  height: 40,
                  padding: EdgeInsets.zero,
                  onPressed: () => context.go('/login'),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '로그아웃',
                          style: TextStyle(
                            color: AppColors.textPrimary,
                            fontSize: 15,
                          ),
                        ),
                        SizedBox(width: 6),
                        Icon(Icons.logout, size: 15, color: AppColors.textPrimary),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
            Text(
              "스케줄을 관리하고 알림을 추가할 수 있다.",
              style: TextStyle(
                color: AppColors.textHint,
                fontWeight: FontWeight.bold,
                fontSize: 10,
              ),
            ),
            SizedBox(height: 4),
            Text(
              "환영합니다 사용자홍길동.",
              style: TextStyle(
                color: AppColors.textHint,
                fontWeight: FontWeight.bold,
                fontSize: 10,
              ),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppButton(
                  width: 100,
                  height: 40,
                  padding: EdgeInsets.zero,
                  onPressed: () => context.go('/set'),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '설정',
                          style: TextStyle(
                            color: AppColors.textPrimary,
                            fontSize: 15,
                          ),
                        ),
                        SizedBox(width: 6),
                        Icon(Icons.settings, size: 15, color: AppColors.textPrimary),
                      ],
                    ),
                  ),
                ),
                AppButton(
                  width: 100,
                  height: 40,
                  padding: EdgeInsets.zero,
                  onPressed: () => context.go('/add'),
                  child: Container(
                    decoration: BoxDecoration(
                      color: AppColors.darkButton,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '스케줄',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(width: 6),
                          Icon(Icons.add, size: 15, color: Colors.white),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                itemCount: schedules.length,
                itemBuilder: (context, index) {
                  final item = schedules[index];
                  return ScheduleCard(
                    title: item['title'] as String,
                    time: item['time'] as String,
                    isAlarmOn: item['isAlarmOn'] as bool,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}