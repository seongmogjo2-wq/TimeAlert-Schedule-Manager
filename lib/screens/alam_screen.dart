import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
      backgroundColor: Color(0xFFEEF2FF),
      body: Padding(
        padding: EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 16,
          children: [
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '알림 화면',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                Material(
                  child: InkWell(
                    onTap: () => context.go('/login'),
                    child: Container(
                      width: 100,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Center(
                        child: Row(
                          spacing: 10,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '로그아웃',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                              ),
                            ),
                            Icon(Icons.logout, size: 15, color: Colors.black),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Text(
              "스케줄을 관리하고 알림을 추가할 수 있다.",
              style: TextStyle(
                color: Color(0xFFA0A3B2),
                fontWeight: FontWeight.bold,
                fontSize: 10,
              ),
            ),
            Text(
              "환영합니다 사용자홍길동.",
              style: TextStyle(
                color: Color(0xFFA0A3B2),
                fontWeight: FontWeight.bold,
                fontSize: 10,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Material(
                  child: InkWell(
                    onTap: () => context.go('/set'),
                    child: Container(
                      width: 100,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Center(
                        child: Row(
                          spacing: 10,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '설정',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                              ),
                            ),
                            Icon(Icons.settings, size: 15, color: Colors.black),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Material(
                  child: InkWell(
                    onTap: () => context.go('/add'),
                    child: Container(
                      width: 100,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Center(
                        child: Row(
                          spacing: 10,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '스케줄',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            ),
                            Icon(Icons.add, size: 15, color: Colors.white),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
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
