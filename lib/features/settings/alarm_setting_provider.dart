import 'package:flutter_riverpod/flutter_riverpod.dart';

class AlarmSettingNotifier extends Notifier<bool> {
  @override
  bool build() => true;

  void toggle() => state = !state;
}

final alarmSettingProvider = NotifierProvider<AlarmSettingNotifier, bool>(
  AlarmSettingNotifier.new,
);
