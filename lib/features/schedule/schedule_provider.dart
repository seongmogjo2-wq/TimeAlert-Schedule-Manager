import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:timealert_schedule_manager/features/schedule/schedule.dart';


class ScheduleListNotifier extends AsyncNotifier<List<Schedule>> {
  @override
  Future<List<Schedule>> build() async {
    await Future.delayed(const Duration(seconds: 1));
    return const [
      Schedule(title: '플러터 프로그래밍', time: 'Mon 09:00 - 10:30', isAlarmOn: true),
      Schedule(title: '알고리즘 및 실습', time: 'Wed 13:00 - 15:00', isAlarmOn: false),
      Schedule(title: '소프트웨어 공학', time: 'Thu 10:30 - 12:00', isAlarmOn: true),
    ];
  }

  Future<void> addSchedule(Schedule schedule) async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      await Future.delayed(const Duration(milliseconds: 500));
      final currentList = state.value ?? [];
      return [...currentList, schedule];
    });
  }
}

final scheduleListProvider = AsyncNotifierProvider<ScheduleListNotifier, List<Schedule>>(
  ScheduleListNotifier.new,
);