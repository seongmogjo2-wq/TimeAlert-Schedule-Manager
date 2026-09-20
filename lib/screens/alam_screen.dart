import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:timealert_schedule_manager/core/constants/app_colors.dart';
import 'package:timealert_schedule_manager/core/widgets/app_button.dart';
import 'package:timealert_schedule_manager/widgets/schedule_card.dart';
import '../features/schedule/schedule_provider.dart';

class AlamScreen extends ConsumerWidget {
  const AlamScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncSchedules = ref.watch(scheduleListProvider);

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  '알림 화면',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: AppColors.textPrimary),
                ),
                AppButton(
                  width: 100,
                  height: 40,
                  padding: EdgeInsets.zero,
                  onPressed: () => context.go('/login'),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text('로그아웃', style: TextStyle(color: AppColors.textPrimary, fontSize: 15)),
                        SizedBox(width: 6),
                        Icon(Icons.logout, size: 15, color: AppColors.textPrimary),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
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
                      children: const [
                        Text('설정', style: TextStyle(color: AppColors.textPrimary, fontSize: 15)),
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
                        children: const [
                          Text('스케줄', style: TextStyle(color: Colors.white, fontSize: 15)),
                          SizedBox(width: 6),
                          Icon(Icons.add, size: 15, color: Colors.white),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Expanded(
              // .when 패턴을 통한 비동기 상태 분기 UI 구현
              child: asyncSchedules.when(
                data: (schedules) => ListView.builder(
                  itemCount: schedules.length,
                  itemBuilder: (context, index) {
                    final item = schedules[index];
                    return ScheduleCard(
                      title: item.title,
                      time: item.time,
                      isAlarmOn: item.isAlarmOn,
                    );
                  },
                ),
                loading: () => const Center(child: CircularProgressIndicator()),
                error: (err, stack) => Center(child: Text('에러 발생: $err')),
              ),
            ),
          ],
        ),
      ),
    );
  }
}