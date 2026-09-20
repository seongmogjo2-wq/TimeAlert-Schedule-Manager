import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../core/constants/app_colors.dart';
import '../features/settings/alarm_setting_provider.dart';

class ScheduleCard extends ConsumerWidget {
  final String title;
  final String time;
  final bool isAlarmOn;
  final VoidCallback? onTap;
  final ValueChanged<bool>? onAlarmToggle;

  const ScheduleCard({
    super.key,
    required this.title,
    required this.time,
    required this.isAlarmOn,
    this.onTap,
    this.onAlarmToggle,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isGlobalAlarmOn = ref.watch(alarmSettingProvider);
    final effectiveAlarmOn = isGlobalAlarmOn && isAlarmOn;

    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12),
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 4),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: AppColors.surface,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: AppColors.textPrimary,
                  ),
                ),
                SizedBox(height: 6),
                Text(
                  time,
                  style: TextStyle(
                    fontSize: 14,
                    color: AppColors.textSecondary,
                  ),
                ),
              ],
            ),
            Icon(
              effectiveAlarmOn ? Icons.notifications_active : Icons.notifications_off,
              color: effectiveAlarmOn ? AppColors.darkButton : AppColors.iconDisable,
            ),
          ],
        ),
      ),
    );
  }
}