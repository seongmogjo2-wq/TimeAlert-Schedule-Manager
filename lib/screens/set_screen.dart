import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SetScreen extends StatelessWidget {
  const SetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEEF2FF),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Color(0xFF0F172A),
                  side: BorderSide(color: Colors.white),
                  minimumSize: Size(40, 40),
                  padding: EdgeInsets.zero,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                ),
                onPressed: () => context.go('/alam'),
                child: Icon(Icons.arrow_back, size: 18),
              ),
              SizedBox(height: 16),
              Text(
                '설정',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Color(0xFF0F172A)),
              ),
              Text(
                '알림 설정 및 전체 설정',
                style: TextStyle(fontSize: 13, color: Color(0xFF64748B)),
              ),
              SizedBox(height: 20),

              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 22,
                          backgroundColor: Color(0xFFEEF2FF),
                          child: Icon(Icons.person, color: Colors.black),
                        ),
                        SizedBox(width: 14),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('홍길동', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Color(0xFF0F172A))),
                            Text('honggildong@gamil.com', style: TextStyle(fontSize: 13, color: Color(0xFF64748B))),
                          ],
                        ),
                      ],
                    ),
                    Divider(height: 30, color: Color(0xFFF1F5F9)),
                    SwitchListTile(
                      contentPadding: EdgeInsets.zero,
                      title: Text('전체 알림 활성화', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
                      activeThumbColor: Colors.black,
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