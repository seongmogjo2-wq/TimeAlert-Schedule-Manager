import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AddScheduleScreen extends StatelessWidget {
  const AddScheduleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController name = TextEditingController();
    TextEditingController start = TextEditingController();
    TextEditingController end = TextEditingController();

    Widget input(
      TextEditingController text,
      String name,
      Icon icon,
      String hint,
    ) {
      return Column(
        children: [
          Row(
            children: [
              icon,
              Text(name, style: TextStyle(fontWeight: FontWeight.bold)),
            ],
          ),
          TextField(
            controller: text,
            decoration: InputDecoration(
              hint: Text(hint, style: TextStyle(color: Color(0xFFAEB3C0))),
              filled: true,
              fillColor: Color(0xFFF4F4F6),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(color: Color(0xFFF4F4F6), width: 2),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black, width: 2),
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
        ],
      );
    }

    return Scaffold(
      backgroundColor: Color(0xFFEEF2FF),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          spacing: 8,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Material(
              child: InkWell(
                onTap: () => context.go('/alam'),
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
                        Icon(Icons.arrow_back, size: 15, color: Colors.black),
                        Text(
                          '돌아가기',
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 8),
            Text(
              '일정 추가',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
            Text('일정추가 및 설정', style: TextStyle(color: Color(0xFF848796))),
            Container(
              padding: EdgeInsets.all(16),
              width: double.infinity,
              height: 125,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.white,
              ),
              child: Center(
                child: input(
                  name,
                  '일정 이름',
                  Icon(Icons.schedule),
                  '일정의 이름을 입력하시오',
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(16),
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.white,
              ),
              child: Center(
                child: Column(
                  spacing: 16,
                  children: [
                    input(start, '시작 일자', Icon(Icons.calendar_month), '연도-월-일'),
                    input(end, '끝남 일자', Icon(Icons.calendar_month), "연도-월-일"),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(16),
              width: double.infinity,
              height: 75,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.white,
              ),
              child: Center(
                child: SwitchListTile(
                  contentPadding: EdgeInsets.zero,
                  title: Text(
                    '알림 활성화',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                  activeThumbColor: Colors.black,
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
